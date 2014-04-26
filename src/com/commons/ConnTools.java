package com.commons;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 * title:获取tomcat中的数据源。管理连接对像
 * @author Administrator
 *
 */
public class ConnTools {

	private static DataSource source;
	
	static{
		
		//Context对像，获取tomcat中配置的数据源
		//构造Context
		try {
			Context context = new InitialContext();
			source = (DataSource)context.lookup("java:comp/env/jndi/oracle");
			
			System.out.println( "source:"+source );
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//获取数据源
	
	public static DataSource getDataSource(){
		return source;
		
	}
	//获取连接对像
	public static Connection getConnecton(){
		
		Connection conn = null;
		
		try {
			conn = source.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	//关闭
	public static void close( Connection conn,PreparedStatement stmt ){
		
		try{
			if( stmt != null ){
				stmt.close();
				stmt = null;
			}
			if( conn != null ){
				
				conn.close();
				conn = null;
			}
		}catch( SQLException e ){
			
			e.printStackTrace();
		}
	}
	
	//关闭
	public static void close( Connection conn,PreparedStatement stmt,ResultSet rs ){
			
			try{
				if( rs != null ){
					rs.close();
					rs = null;
				}
				if( stmt != null ){
					stmt.close();
					stmt = null;
				}
				if( conn != null ){
					
					conn.close();
					conn = null;
				}
			}catch( SQLException e ){
				
				e.printStackTrace();
			}
		}
	public static void close(Connection conn,Statement stmt,ResultSet rs){
		
		try{
			if( rs != null ){
				rs.close();
				rs = null;
			}
			if( stmt != null ){
				stmt.close();
				stmt = null;
			}
			if( conn != null ){
				
				conn.close();
				conn = null;
			}
		}catch( SQLException e ){
			
			e.printStackTrace();
		}
	}
	
	public static void close( Connection conn,Statement stmt ){
		
		try{
			if( stmt != null ){
				stmt.close();
				stmt = null;
			}
			if( conn != null ){
				
				conn.close();
				conn = null;
			}
		}catch( SQLException e ){
			
			e.printStackTrace();
		}
	}
}
