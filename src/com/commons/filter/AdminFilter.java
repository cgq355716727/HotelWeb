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

import com.service.IAdminService;
import com.service.impl.AdminService;
import com.vo.AdminVo;

public class AdminFilter implements Filter {
	
	private String encoding;
	private IAdminService adminService;
	

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		System.out.println( "AdminFilter doFilter" );
		//转换成对应的子类
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		//统一设置字符编码
		request.setCharacterEncoding( encoding );
		response.setCharacterEncoding( encoding );
		//过滤非法用户，用户信息保存在cookie中，以判断用户是否已登陆
			Cookie[] allCookies=request.getCookies();
			AdminVo vo=new AdminVo();
			if(allCookies!=null){
				for(Cookie e:allCookies){			
					if(e.getName().equals("adminName")){
						vo.setAdminName(e.getValue());
						System.out.println("查看Cookie的路劲"+e.getPath());
					}
					if(e.getName().equals("adminPw")){
						vo.setAdminPw(e.getValue());
						System.out.println("查看Cookie的路劲"+e.getPath());
					}			
				}
			}
		String url=request.getRequestURI();
		url=url.substring(url.lastIndexOf("/"));
		System.out.println(url);
		//如果请求的路径是login
		if(url.equals("/login.jsp")||url.equals("/admin.action")){
			chain.doFilter(request, response);
			return; 
		}
		if(vo.getAdminName()!=null&&!vo.getAdminName().equals("")&&vo.getAdminPw()!=null&&!vo.getAdminPw().equals("")){
			vo=adminService.validateAdmin(vo);
			if(vo.getAdminId()>0){
				//request.getSession().setAttribute("admininfo", vo);
				request.setAttribute("admin", vo);
				chain.doFilter(request, response);
				return;
			}
		}
		//非法用户跳转到登陆界面
		request.getRequestDispatcher("/admin/login.jsp").forward(request, response);
		
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
				//获取初始化参数
				System.out.println("AdminFilter....init");
				encoding = filterConfig.getInitParameter( "encoding" );
				System.out.println( "AdminFilter intit:encoding:"+encoding );
				adminService=new AdminService();
	}

}
