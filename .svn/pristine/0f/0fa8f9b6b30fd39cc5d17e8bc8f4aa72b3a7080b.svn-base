package com.action.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.action.ActionDispatcher;
import com.action.ActionForm;
import com.action.ActionForward;
import com.action.ActionMapping;
import com.commons.Log;
import com.service.IHotelService;
import com.service.IRoomService;
import com.service.IRoomTypeService;
import com.service.impl.HotelService;
import com.service.impl.RoomService;
import com.service.impl.RoomTypeService;
import com.vo.AdminVo;
import com.vo.RoomVo;

public class RoomAction extends ActionDispatcher {
	
	private IRoomService roomService;
	private IHotelService hotelService;
	private IRoomTypeService roomTypeService;
	private AdminVo admin;
	
	public RoomAction(){
		roomService=new RoomService();
		hotelService=new HotelService();
		roomTypeService=new RoomTypeService();
	}
	
	public ActionForward showAllRooms(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
		//获得本宾馆所有的房间
		admin=(AdminVo)request.getAttribute("admin");
		int hotelId=admin.getHotelId();
		List rooms=roomService.queryRooms(hotelId);
		request.setAttribute("rooms", rooms);		
		return mapping.findForward("showRooms");
		
	}
	
	public ActionForward deleteRoom(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		int flag=roomService.delRoom(Integer.parseInt(request.getParameter("orderId").trim()));
		try{
			if(flag>0){
				response.setCharacterEncoding("utf-8");
				response.getWriter().println("删除成功");
			}else{
				response.getWriter().println("删除失败");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	public ActionForward getRoomTypes(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
		admin=(AdminVo)request.getAttribute("admin");
		List roomTypes=hotelService.queryRoomTypeVolList(admin.getHotelId());
		Map jsonMap=new HashMap();
		jsonMap.put("roomTypes", roomTypes);
		JSONObject json=JSONObject.fromObject(jsonMap);
		Log.log(this, json.toString());
		response.setCharacterEncoding("utf-8");
		try{
			response.getWriter().println(json);
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	public ActionForward updateRoom(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
		RoomVo room=new RoomVo();
		room.setRoomId(Integer.parseInt(request.getParameter("roomId")));
		room.setRoomTypeid(roomTypeService.queryRoomTypeId(request.getParameter("roomTypeName")));
		room.setRoomNo(request.getParameter("roomNo"));
		int flag=roomService.updateRoom(room);
		try{
			if(flag>0){
				response.setCharacterEncoding("utf-8");
				response.getWriter().println("修改成功");
			}else{
				response.getWriter().println("修改失败");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	

}
