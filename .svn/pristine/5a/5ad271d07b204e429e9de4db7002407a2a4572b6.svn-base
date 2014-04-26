package com.mapping.impl;

import java.io.File;
import java.util.List;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.input.SAXBuilder;
import org.jdom.xpath.XPath;

import com.mapping.impl.ActionConfig;

import com.action.ActionForm;
import com.action.ActionForward;
import com.action.ActionMapping;
import com.mapping.IActionConfig;
import com.mapping.IParseXML;


/**
 * title:解析struts-config.xml 
 * @author Administrator
 *
 */
public class ParseXML implements IParseXML{

	//解析xml
	public IActionConfig parser(String file) {
		// TODO Auto-generated method stub
		//定义IActionConfig
		IActionConfig actionConfig = new ActionConfig();
		//定义ActionMapping
		ActionMapping mapping = null;
		//定义ActionForward
		ActionForward forward = null;
		
		//通过jdom解析xml
		SAXBuilder builder = new SAXBuilder();
		//Document
		try {
			Document doc = builder.build( new File( file ) );
			
			//获取根节点
			Element root = doc.getRootElement();
			
			//获取form-bean节点中的数据
			XPath xpath = XPath.newInstance( "//form-bean" );
			List<Element> formBean = xpath.selectNodes( root );
			for( Element form: formBean ){
				
				//取属性
				actionConfig.addActionForm( form.getAttributeValue("name"),
						(ActionForm)Class.forName( form.getAttributeValue( "type" ) )
						.newInstance());
			}
			
			//通过xpath获取指定的节点集合   action
			xpath = XPath.newInstance( "//action" );
			List<Element>actionInfo = xpath.selectNodes( root );
			
			for( Element e:actionInfo ){
				//实例化actionMapping对像
				mapping = new ActionMapping();
				
				//获取action的属性
				mapping.setPath( e.getAttributeValue( "path" ) );
				mapping.setType( e.getAttributeValue( "type" ) );
				mapping.setParameter( e.getAttributeValue( "parameter" ) );
				mapping.setName( e.getAttributeValue( "name" ) );
				//获取action的子节点forward
				List<Element> forwardInfo = e.getChildren();
				for( Element f:forwardInfo ){
					
					//实例化actionForward
					forward = new ActionForward();
					//获取forward子节点的属性
					forward.setName( f.getAttributeValue( "name" ) );
					forward.setPath( f.getAttributeValue( "path" ) );
					forward.setRedirect( Boolean.parseBoolean( f.getAttributeValue( "redirect" ) ) );
					//把forward添加到mapping中
					mapping.addForward(forward);
				}
				//把mapping添加到actionConfig中 
				actionConfig.addActionMapping(mapping);
			}	
		} catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  

		return actionConfig;
	}

}
