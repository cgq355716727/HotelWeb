package com.mapping;

import com.action.ActionForm;
import com.action.ActionMapping;

/**
 * title:封装多个ActionMapping
 * @author Administrator
 *
 */
public interface IActionConfig {

	//向集合中添加ActionMapping
	public void addActionMapping( ActionMapping mapping );
	
	//从集合中通过path去取ActionMapping
	public ActionMapping findActionMapping( String path );
	
	//操作form-bean
	public void addActionForm( String name,ActionForm form );
	
	public ActionForm findAactionForm( String name );
}
