package com.action.impl;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.ActionDispatcher;
import com.action.ActionForm;
import com.action.ActionForward;
import com.action.ActionMapping;
import com.service.IAdminService;
import com.service.impl.AdminService;
import com.vo.AdminVo;

public class AdminAction extends ActionDispatcher {
	
	private IAdminService adminService;
	
	public AdminAction(){
		adminService=new AdminService();
	}
	
	public ActionForward login(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
		AdminVo vo=(AdminVo)form;

		int flag=adminService.validateAdmin(vo).getAdminId();
		if(flag>0){
			//将用户信息添加到Cookie中
			Cookie adminName=new Cookie("adminName",vo.getAdminName());
			//HotalWeb
			adminName.setPath(request.getContextPath()); 
			Cookie adminPw=new Cookie("adminPw",vo.getAdminPw());
			adminPw.setPath(request.getContextPath());
			response.addCookie(adminName);
			response.addCookie(adminPw);
			return mapping.findForward("success");
		}else{
			
			request.setAttribute("msg", "用户名或密码错误");
			return mapping.findForward("error");
		}
	}
	

	public ActionForward validate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
	 
		AdminVo vo=(AdminVo)form;
		if(vo.getAdminPw().length()>8){
			request.setAttribute("msg", "密码不能超过8位");
			return mapping.findForward("error");
		}

		if(vo.getAdminName().length()>50){
			request.setAttribute("msg", "用户名错误");
			return mapping.findForward("error");
		}
		return mapping.findForward("login");
		
	}

}
