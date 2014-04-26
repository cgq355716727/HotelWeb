package com.action.impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.ActionDispatcher;
import com.action.ActionForm;
import com.action.ActionForward;
import com.action.ActionMapping;
import com.service.IUserService;
import com.service.impl.UserService;
import com.vo.ResgistVo;
import com.vo.UserVo;


/**
 * title:处理用户业务 
 * @author Administrator
 *
 */
public class UserAction extends ActionDispatcher{
	
	private IUserService userService;
	public UserAction(){
		userService = new UserService();
	}
	
	//登录
	public ActionForward login(ActionMapping mapping,ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//创建UserVo类，封装表单数据
		UserVo vo = (UserVo)form;

		System.out.println( "UserAction login" );
		System.out.println( "vo.username:"+vo.getUsername()+" password:"+vo.getPassword() );
		
		//查询
		userService.validateUser( vo );
		
		if( vo.getUsertype()>0 ){
			
			//把用户数据放于session 
			request.getSession().setAttribute( "userinfo", vo );
			
			return mapping.findForward( "success" );
		}else{
			
			return mapping.findForward( "error" );
		}
	}
	
	//注册
		public ActionForward resgist(ActionMapping mapping,ActionForm form,
					HttpServletRequest request, HttpServletResponse response) {
				 
			System.out.println( "UserAction register" );
			// TODO Auto-generated method stub
			//创建UserVo类，封装表单数据
			ResgistVo vo = (ResgistVo)form;
			
			//注册
			
			if( userService.Resgist(vo)>0 ){
				
				//把用户数据放于session 
				//request.getSession().setAttribute( "userinfo", vo );
				return mapping.findForward( "success" );
			}else{
				
				return mapping.findForward( "error" );
			}
			//return null;
	}
}
