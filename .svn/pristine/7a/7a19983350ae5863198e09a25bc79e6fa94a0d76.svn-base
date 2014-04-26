package com.commons.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * title:监听器  
 * @author Administrator
 *
 */
public class UserListener implements ServletContextListener{

	//初始化
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		System.out.println( "context init..." );
		//获取数据源
		try {
			Class.forName( "com.commons.ConnTools" );
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		
	}

}
