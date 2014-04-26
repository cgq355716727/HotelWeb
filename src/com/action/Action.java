package com.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.ActionForm;
import com.action.ActionForward;
import com.action.ActionMapping;

/**
 * title:所有业务处理类的基类
 * 如果一个业务类只有一个业务方法，继承Action类
 * @author Administrator
 *
 */
public abstract class Action {
	
	//业务方法 
	public abstract ActionForward execute( ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response );
		
}
