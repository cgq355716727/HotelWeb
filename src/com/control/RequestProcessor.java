package com.control;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.action.Action;
import com.action.ActionForm;
import com.action.ActionForward;
import com.action.ActionMapping;
import com.mapping.IActionConfig;


/**
 * tilte:业务派发控制器，获取前端控制器传递过来的config,request,response.
 * 进行具体业务的派发。
 * @author Administrator
 *
 */
public class RequestProcessor {

	private IActionConfig config;//封装struts-config.xml配置文件中的数据
	//创建action实例对像的缓存
	private Map<String,Action> actionMap = new HashMap<String,Action>();
	public RequestProcessor( IActionConfig config ){
		this.config = config;
	}
	
	//业务处理方法
	public void processor( HttpServletRequest request,HttpServletResponse response ){
		
		//获取客户端的请求路径  user     /user.action
		String path = request.getRequestURI();
		path = path.substring( path.lastIndexOf( "/" )+1,path.lastIndexOf( "." ) );
		System.out.println( "path:"+path );
		//把请求路径从config查找是否有对应的,可以获取一个ActionMapping对像 
		ActionMapping mapping = config.findActionMapping( path );
		try{
			if( mapping == null ){
				
				request.getRequestDispatcher("Error404.jsp")
				.forward(request, response);
				return;
			}
			
			//调用表单VO类封装数据  从config中获取ActionForm
			ActionForm form = config.findAactionForm( mapping.getName() );
			
			if( form != null ){//封装数据
				
				//setForm( form,request );
				//BeanUtils工具类  setProperty方法(1javabean对像
				//2:javabean中的属性名字  3:属性值)
				//获取客户端请求的所有的参数名字 
				Enumeration e = request.getParameterNames();
				//Map properties = new HashMap();
				while( e.hasMoreElements() ){
					
					//表单元素名字
					String name = (String)e.nextElement();
					System.out.println( "name:"+name );
					
					//setProperty自动的把javabean 的属性设置指定的值
					//表单元素名字和javabean中的属性名字相同的都会自动封装数据
					BeanUtils.setProperty( form, name, request.getParameter( name ));
					//properties.put( name, request.getParameterValues(name));
				}
				//populate调用setProperty
				//BeanUtils.populate(form, properties);
			}
			
			//先从action缓存中取实例对像，
			Action action = actionMap.get( mapping.getType() );
			
			//如果mapping对像存在，实例化对应的action类
			if( action == null ){//第一次访问时肯定没有。创建
				action = builderAction( mapping );
			}
			//调用action的execute方法，处理业务 
			ActionForward forward = action.execute(mapping,form, request, response);
			
			if( forward != null ){//如果不为空，检查是否要进行重定向
				
				if( forward.isRedirect() ){//重定向
					
					response.sendRedirect( forward.getPath() );
				}else{//转发
					
					request.getRequestDispatcher( forward.getPath() )
					.forward(request, response);
				}
			}
			//forward为空，做异步处理
		}catch( Exception e ){
			
			e.printStackTrace();
		}
	}
	
	//实例表单vo类，封装表单数据
	private void setForm( ActionForm form,HttpServletRequest request ){
		 
		//表单的元素名字必须要和表单vo中的属性名相同。
		//查找当前ActionForm中的所有属性
		Field []fs = form.getClass().getDeclaredFields();
		
		for( Field f:fs ){
			
			//获取属性名字
			String name = f.getName();
			
			String param = request.getParameter( name );
			
			if( param != null ){//构造属性对应的set方法，设置属性值
	
			//获取表单数据 			 
				String method = "set"+(""+name.charAt( 0 )).toUpperCase()+name.substring( 1 );
				System.out.println( "method:"+method );
				
				//设置方法的参数
				try {
					Method m = form.getClass().getMethod( method, 
							f.getType());
					
					System.out.println( "f.getType="+f.getType() );
					System.out.println( "f.getType().getName()="+f.getType().getName() );
					
					if(f.getType().getName().equals( "String" )){
						
					}
					
					//调用方法
					m.invoke( form, param );//?????
				} catch ( Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}  	 
			}
		}
	}
	
	//实例化action
	private Action builderAction( ActionMapping mapping ){
		
		Action action = null;
		
		try {//反射创建实例对像
			action = (Action)Class.forName( mapping.getType() ).newInstance();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		
		//添加到缓存中 
		actionMap.put( mapping.getPath(), action );
		
		return action;
	}	
}