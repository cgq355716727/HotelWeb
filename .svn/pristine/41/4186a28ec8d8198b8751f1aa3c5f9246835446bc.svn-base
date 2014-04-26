package com.action;

import java.util.HashMap;
import java.util.Map;

import com.action.ActionForward;

/**
 *  title:封装struts-config配置文件中
 * action-mapping节点中的action节点中的数据
 * @author Administrator
 *
 */
public class ActionMapping {
	
	private String path;//客户端请求的路径 唯一
	private String type;//处理的action类
	private String parameter;//配置客户端请求的属性名
	private String name;//指定封装表单的VO类
	//存储多个forward节点
	private Map<String,ActionForward> forward = new HashMap<String,ActionForward>();
	
	//向集合中添加ActionForward
	public void addForward( ActionForward actionForward ){
		
		forward.put( actionForward.getName(), actionForward);
	}
	public ActionForward findForward( String name ){
		
		return forward.get( name );
	}
	
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getParameter() {
		return parameter;
	}
	public void setParameter(String parameter) {
		this.parameter = parameter;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Map<String, ActionForward> getForward() {
		return forward;
	}
	public void setForward(Map<String, ActionForward> forward) {
		this.forward = forward;
	}
	
}
