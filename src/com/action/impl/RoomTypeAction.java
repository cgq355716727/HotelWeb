package com.action.impl;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.action.ActionDispatcher;
import com.action.ActionForm;
import com.action.ActionForward;
import com.action.ActionMapping;
import com.commons.Log;
import com.service.IHotelService;
import com.service.IRoomTypeService;
import com.service.impl.HotelService;
import com.service.impl.RoomTypeService;
import com.vo.AdminVo;
import com.vo.RoomTypeVo;

public class RoomTypeAction extends ActionDispatcher {
	
	private IRoomTypeService roomTypeService;
	private IHotelService hotelService;
	
	public RoomTypeAction(){
		roomTypeService=new RoomTypeService();
		hotelService=new HotelService();
	}
	
	//新增一条房间类型
	public RoomTypeVo updateFiles(HttpServletRequest request){
		//获得当前的servletcontext根路径
		ServletContext application=request.getSession().getServletContext();
		System.out.println(application.getRealPath("/"));
		
		DiskFileItemFactory factory=new DiskFileItemFactory();
		factory.setSizeThreshold(4099);
		factory.setRepository(new File(application.getRealPath("temp")));
		System.out.println(application.getRealPath("temp"));
		
		RoomTypeVo vo=new RoomTypeVo();
		//构造上传的组件
		ServletFileUpload upload=new ServletFileUpload(factory);
		
		//获取上传的数据列表
		try{
			List<FileItem> params=upload.parseRequest(request);
			for(FileItem param:params){
				//如果是普通的表单
				if(param.isFormField()){
					String paramName=param.getFieldName();
					System.out.println(paramName);
					String paramValue=param.getString("utf-8");
					if(paramName.equals("roomTypename")){
						vo.setRoomTypename(paramValue);
					}else if(paramName.equals("introduction")){
						vo.setIntroduction(paramValue);
					}else if(paramName.equals("roomPrice")){
						vo.setRoomPrice(Integer.parseInt(paramValue));
					}else if(paramName.equals("roomTypeId")){
						vo.setRoomTypeid(Integer.parseInt(paramValue.trim()));
					}
				}else{
					//文件
					String fileName=param.getName();
					if(!fileName.equals("")){
						//System.out.println(param.getSize());
						fileName = System.currentTimeMillis()+fileName.substring( fileName.lastIndexOf(".") );
						String url=application.getRealPath("admin/update")+"\\"+fileName;
						vo.setImageUrl("admin/update/"+fileName);
						param.write(new File(url));
					}
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return vo;

	}
	
	//返回所有的房间类型的信息
	public ActionForward showAllTypes(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
		//获得所有的房间类型的列表
		List roomTypes=roomTypeService.queryAll();
		request.setAttribute("roomTypes", roomTypes);
		request.setAttribute("size", roomTypes.size());
		JSONArray json=JSONArray.fromObject(roomTypes);
		Log.log(this, json.toString());
		return mapping.findForward("success");
		
	}
	
	public ActionForward updRoomType(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
 		RoomTypeVo vo=updateFiles(request);
		int flag=roomTypeService.updRoomType(vo);		
		return mapping.findForward("showAllTypes");
		
	}
	
	//新增一条房间类型
	public ActionForward addRoomType(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
		RoomTypeVo vo=updateFiles(request);
		int flag=roomTypeService.addRoomType(vo);
		if(flag>0){
			request.setAttribute("msg", "添加成功");
		}else {
			request.setAttribute("msg", "添加失败");
		}
	
		return mapping.findForward("showAllTypes");	
	}	
	
	public ActionForward delRoomType(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
		RoomTypeVo vo=updateFiles(request);
		int roomTypeId=vo.getRoomTypeid();
		System.out.println(roomTypeId);
		roomTypeService.delRoomType(roomTypeId);		
		return mapping.findForward("showAllTypes");
	}
	
	public ActionForward showRoomTypeByHotelId(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		//获得用户所属酒店ID
		AdminVo vo=(AdminVo)request.getAttribute("admin");
		int hotelId=vo.getHotelId();
		List roomTypes=hotelService.queryRoomTypeVolList(hotelId);
		request.setAttribute("roomTypes", roomTypes);
		Map jsonMap=new HashMap();
		jsonMap.put("roomTypes", roomTypes);
		JSONObject json=JSONObject.fromObject(jsonMap);
		Log.log(this, json.toString());
		
		return mapping.findForward("addReserve");
	}
	
}


