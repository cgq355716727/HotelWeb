package com.action.impl;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.action.ActionDispatcher;
import com.action.ActionForm;
import com.action.ActionForward;
import com.action.ActionMapping;
import com.commons.Log;
import com.commons.PageBean;
import com.service.IGuestService;
import com.service.IHotelService;
import com.service.IOrderService;
import com.service.IRoomService;
import com.service.IRoomTypeService;
import com.service.impl.GuestService;
import com.service.impl.HotelService;
import com.service.impl.OrderService;
import com.service.impl.RoomService;
import com.service.impl.RoomTypeService;
import com.vo.AdminVo;
import com.vo.GuestVo;
import com.vo.OrderVo;
import com.vo.RoomTypeVo;

public class OrderAction extends ActionDispatcher {
	
	private IOrderService orderService;
	private IRoomTypeService roomTypeService;
	private IHotelService hotelService;
	private IGuestService guestService;
	private IRoomService roomService;
	
	public OrderAction (){
		
		orderService=new OrderService();
		roomTypeService=new RoomTypeService();
		hotelService=new HotelService();
		guestService=new GuestService();
		roomService=new RoomService();
	}
	
	
	public ActionForward createRoomType(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
			//获得宾馆数据，封装为JSON对象，返回给客户端
		List list=roomTypeService.queryAll();
		Map<String,List> roomTypes=new HashMap<String,List>();
		roomTypes.put("rows", list);
		JSONObject json=JSONObject.fromObject(roomTypes);
		try{
			response.setCharacterEncoding("utf-8");
			response.getWriter().println(json);
			Log.log(this, json.toString());
		}catch(Exception e){
			e.printStackTrace();
		}
 		return null;
	}
	
	public ActionForward createHotel(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
		//获得所有分宾馆列表
		List list=hotelService.queryHotelList();
		Map<String,List> hotels=new HashMap<String,List>();
		hotels.put("rows", list);
		JSONObject json=JSONObject.fromObject(hotels);
		try{
			response.setCharacterEncoding("utf-8");
			response.getWriter().println(json);
			Log.log(this, json.toString());
		}catch(Exception e){
			e.printStackTrace();
		}
 		return null;		
	}
	
	public ActionForward search(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){

		try {
			
			Map<String,String> param=(Map<String,String>)request.getAttribute("param");
			
			//封装分页信息
			PageBean page=new PageBean(orderService.queryCount(param),10);;
			int jumpPage=Integer.parseInt(request.getParameter("jumpPage"));
			Log.log(this, "jumpPage"+jumpPage);
			if(jumpPage>page.getMaxPage()){
				page.setCurPage(page.getMaxPage());
			}else if(jumpPage<1){
				page.setCurPage(1);
			}else{
					page.setCurPage(jumpPage);
			}		
			//分页从数据库查询所有的入住信息
			Map orders=new HashMap();
			List Orders=orderService.queryWithOptions(param, page.getCurPage(), page.getRowsPrePage());
			AdminVo admin=(AdminVo)request.getAttribute("admin");
			int hotelId=admin.getHotelId();
			List<RoomTypeVo> roomTypes=hotelService.queryRoomTypeVolList(hotelId);
			orders.put("roomTypes", roomTypes);
			for(RoomTypeVo vo:roomTypes){
				List rooms=roomService.queryRoomNo(vo.getRoomTypeid(), hotelId);
				orders.put(vo.getRoomTypename(), rooms);
			}
			Log.log(this, "orders.size:"+Orders.size());					
			orders.put("page", page);
			orders.put("rows", Orders);
				//构造JSON对象
			JSONObject json=JSONObject.fromObject(orders);
			System.out.println("json:"+json);
			response.setCharacterEncoding("utf-8");
			//把JSON对象传回客户端浏览器
			response.getWriter().println(json);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public ActionForward validateOption(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
		Map<String,String> param=getRequestParameter(request);
		Log.log(this, "validateOption");
		try {
			
			if(param.isEmpty()){
				
				response.setCharacterEncoding("utf-8");
				response.getWriter().println("<script>$('showMsg').html('请至少输入一个选择条件');</script>");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("param", param);
		return mapping.findForward("success");
	}
	
	public Map<String,String> getRequestParameter(HttpServletRequest request){
		
		//将request中的参数存储到map对象中
		Map<String,String> params=new HashMap<String,String>();
		AdminVo admin=(AdminVo)request.getAttribute("admin");
		int hotelId=admin.getHotelId();
		params.put("hotelName",hotelService.queryHotelName(hotelId));
		Log.log(this, "getRequestParameter");
		//循环request中的参数
		Enumeration<String> paramNames=request.getParameterNames(); 
		while(paramNames.hasMoreElements()){
			String param=paramNames.nextElement();
			try {
				if(request.getParameter(param)!=null){
					params.put(param, URLDecoder.decode(request.getParameter(param),"utf-8"));
				}
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return params;
	}
	
	public ActionForward addOrder(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
		//获得客户端传递的参数
		GuestVo guest=new GuestVo();
		guest.setGuestName(request.getParameter("guestName"));
		guest.setIdCard(request.getParameter("idCard"));
		//如果用户还不是会员，则把用户添加进去
		int flag=guestService.queryByIdCard(guest.getIdCard());
		if(flag<1){
			guest.setGuestType(10);
			guestService.Register(guest);
		}
		int userId=guestService.queryByIdCard(guest.getIdCard());
		OrderVo order=new OrderVo();
		order.setUserId(userId);
		AdminVo vo=(AdminVo)request.getAttribute("admin");
		order.setHotelId(vo.getHotelId());
		int roomTypeId=roomTypeService.queryRoomTypeId(request.getParameter("roomTypeName"));
		order.setRoomTypeId(roomTypeId);
		order.setDeposit(Float.parseFloat(request.getParameter("deposit")));
		order.setCheckIn(request.getParameter("checkIn"));
		order.setCheckOut(request.getParameter("checkOut"));
		order.setState(Integer.parseInt(request.getParameter("state").trim()));
		int orderFlag=orderService.insert(order);
		response.setCharacterEncoding("utf-8");
			if(orderFlag<1){
				request.setAttribute("msg", "预定失败");
			}else{
				request.setAttribute("msg", "预定成功");
			}
	
		return mapping.findForward("addReserve");
	}
	
	public ActionForward renew(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
		OrderVo order=new OrderVo();
		order.setOrderId(Integer.parseInt(request.getParameter("orderId").trim()));
		order.setCheckOut(request.getParameter("checkOut"));
		int flag=orderService.updateOrder(order);
		try{
			if(flag>0){
				response.setCharacterEncoding("utf-8");
				response.getWriter().println("已成功续订，房间延期到："+order.getCheckOut());
			}else{
				response.getWriter().println("续订失败，请重新操作");
			}
		}catch(Exception e){
			e.printStackTrace();
		}		
		return null;
	}
	
	public ActionForward checkOut(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
		OrderVo order=new OrderVo();
		order.setOrderId(Integer.parseInt(request.getParameter("orderId").trim()));
		order.setCheckOut(request.getParameter("checkOut"));
		order.setCost(Float.parseFloat(request.getParameter("cost")));
		order.setState(3);  //状态修改为退房状态
		int flag=orderService.updateOrder(order);
		try{
			if(flag>0){
				response.setCharacterEncoding("utf-8");
				response.getWriter().println("支付成功，交还房间钥匙以完成退房");
			}else{
				response.getWriter().println("支付失败");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
		
	}
	
}
