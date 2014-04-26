package com.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mapping.IActionConfig;
import com.mapping.IParseXML;
import com.mapping.impl.ParseXML;

import com.control.RequestProcessor;

/**
 * title:前端控制器，初始化。获取http请求，创建请求/响应对像
 * 把请求，响应对像传递给业务派发控制器处理。
 * @author Administrator
 *
 */
public class ActionServlet extends HttpServlet {
	
	//定义业务派发控制器
	private RequestProcessor processor;

	public void init() throws ServletException {
		// Put your code here
		
		String file = this.getServletContext().getRealPath( this.getInitParameter( "config1" ) );
		System.out.println( "actionServlet..file:"+file );
	
		IParseXML parser = new ParseXML();
		IActionConfig config = parser.parser(file);
		System.out.println( "config:"+config );
		
		//获取tomcat中的数据源
		try {
			Class.forName( "com.commons.ConnTools" );
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//实例化业务派发控制器,
		processor = new RequestProcessor( config );
		
	}


	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//把request,response传递给业务派发控制器处理
		processor.processor(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		this.doGet(request, response);
	}

	
}
