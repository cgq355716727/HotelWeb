package com.mapping.impl;

import java.util.HashMap;
import java.util.Map;

import com.action.ActionForm;
import com.action.ActionMapping;
import com.mapping.IActionConfig;


/**
 * title:封装多个ActionMapping
 * @author Administrator
 *
 */
public class ActionConfig implements IActionConfig{
	
	//存储多个ActionMapping
	private Map<String,ActionMapping> mappings = new HashMap<String,ActionMapping>();
	//存储多个form-bean
	private Map<String,ActionForm> formBean = new HashMap<String,ActionForm>();
	public void addActionMapping(ActionMapping mapping) {
		// TODO Auto-generated method stub
		mappings.put( mapping.getPath(), mapping );
	}

	public ActionMapping findActionMapping(String path) {
		// TODO Auto-generated method stub
		return mappings.get( path );
	}
	
	//添加ActonForm
	public void addActionForm(String name, ActionForm form) {
		// TODO Auto-generated method stub
		formBean.put( name, form );
	}
	//通过名字获取ActionForm
	public ActionForm findAactionForm(String name) {
		// TODO Auto-generated method stub
		return formBean.get( name );
	}
	
	
}
