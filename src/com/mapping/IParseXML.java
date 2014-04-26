package com.mapping;

import com.mapping.IActionConfig;

/**
 * title:解析struts-config.xml
 * @author Administrator
 *
 */
public interface IParseXML {

	//解析指定的xml
	public IActionConfig parser( String file );
}
