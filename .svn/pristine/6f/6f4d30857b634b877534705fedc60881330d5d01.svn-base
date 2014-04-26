package com.action;

import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.Action;
import com.action.ActionForm;
import com.action.ActionForward;
import com.action.ActionMapping;

/**
 * title: 当一个类中有多个业务时，业务类继承当前基类
 * @author Administrator
 *
 */
public abstract class ActionDispatcher extends Action{

	//根据客户端传递的方法名，调用对应的方法
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//获取客户端传递的方法的变量值
		String method = request.getParameter( mapping.getParameter() );
		System.out.println( "method:"+method );
		ActionForward forward = null;
		//反射动态调用方法
		try {
			Method m = this.getClass().getMethod( method, ActionMapping.class,
					ActionForm.class,HttpServletRequest.class,HttpServletResponse.class);
			//调用方法
			forward = (ActionForward)m.invoke( this, mapping,form,request,response);
		} catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		
		return forward;
	}
}
