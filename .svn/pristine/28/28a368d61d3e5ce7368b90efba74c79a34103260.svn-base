package com.commons.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.commons.Utils;
import com.dao.impl.UserDao;
import com.vo.UserVo;

/**
 * title:过滤字符编码    过滤非法用户
 * @author Administrator
 *
 */
public class UserFilter implements Filter{

	private String encoding;
	
	public void init(FilterConfig filterConfig) throws ServletException {
	
		// TODO Auto-generated method stub
		//获取初始化参数
		System.out.println("UserFilter....init");
		encoding = filterConfig.getInitParameter( "encoding" );
		System.out.println( "UserFilter intit:encoding:"+encoding );
	}

	//业务方法  过滤指定匹配的路径 
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		System.out.println( "useFilter doFilter" );
		//转换成对应的子类
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		//统一设置字符编码
		request.setCharacterEncoding( encoding );
		response.setCharacterEncoding( encoding );
		chain.doFilter(request, response);
	}

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
