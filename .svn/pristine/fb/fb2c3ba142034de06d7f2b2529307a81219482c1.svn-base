package com.action.impl;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.action.ActionDispatcher;
import com.action.ActionForm;
import com.action.ActionForward;
import com.action.ActionMapping;
import com.commons.Log;
import com.commons.PageBean;
import com.service.IMsgService;
import com.service.impl.MsgService;
import com.vo.MsgVo;

public class MsgAction extends ActionDispatcher{

	private IMsgService msgService;
	public MsgAction(){
		
		msgService = new MsgService();
	}
	//显示留言
	public ActionForward showMsg(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		Log.log(this, "showMsg...........");
		//分页处理
		PageBean page = new PageBean(msgService.queryMsgCount(),5);
		//处理页面
		int jumpPage = Integer.parseInt(request.getParameter("jumpPage"));
		if(jumpPage<=1){
			
			page.setCurPage(1);
			
		}else if(jumpPage>=page.getMaxPage()){
			
			page.setCurPage(page.getMaxPage());
		}else{
			page.setCurPage(jumpPage);
		}
		//取当前页的数据
		List<MsgVo> list =msgService.showMsgInfo(page.getCurPage(), page.getRowsPrePage());
		//将数据存放在map中
		Map map = new HashMap();
		map.put("total", list.size());
		map.put("rows", list);
		map.put("page", page);
		System.out.println(list.size());
		System.out.println(page);
		//构造json格式的数据返回给客户端
	 	JSONObject json2 = JSONObject.fromObject(list);
		JSONArray json = JSONArray.fromObject(map);
		System.out.println("json"+json);
		
		try {
			response.getWriter().println(json);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			Log.log(this,"json:"+e.getMessage());
			e.printStackTrace();
		}
						
		return null;
	}
	
	//添加留言
	public ActionForward addMsg(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		MsgVo vo = (MsgVo)form;
		//vo.setStuname( new String( vo.getStuname().getBytes( "iso8859-1" ),"gb2312"  ));
		try {
			vo.setMsgTitle(new String ( request.getParameter("msgTitle").getBytes("iso8859-1"),"utf-8" ));
			vo.setMsgContent(new String ( request.getParameter("msgContent").getBytes("iso8859-1"),"utf-8" ));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String msg = "";
		System.out.println(vo.getMsgContent());
		System.out.println(vo.getMsgTitle());
		//添加
		if( msgService.saveMsg(vo)>0){
			
			msg = "数据添加成功!";
		}else{
			msg = "数据添加失败!";
		}
		
		request.setAttribute("msg", msg );
		
		return mapping.findForward( "showMsg" );
	}
	
	public ActionForward delMsg(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		Log.log(this, "delMsg.......");
		try {
			response.getWriter().print( msgService.delMsg( Integer.parseInt( request.getParameter("msgid") ) ) );
		} catch (IOException e) {
			Log.log(this, "delMsg:"+e.getMessage());
			e.printStackTrace();
		}			
		return null;
	}
	
	
}
