package com.commons;


import org.apache.log4j.Logger;

/**
 * title:��־
 * @author 
 *
 */
import org.apache.log4j.Logger;

/**
 * title:日志
 * @author 
 *
 */
public class Log {

	private static Logger logger;
	
	//输出日志  1:对像   2：信息
	public static void log( Object obj,String msg ){
		
		//构造日志处理类
		logger = Logger.getLogger( obj.getClass() );
		
		//输出   输出时间，类信息，+  msg
		logger.info( msg );
	}
}
