package com.action.impl;

import java.io.IOException;
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
import com.service.IRoomTypeService;
import com.service.impl.GuestService;
import com.service.impl.HotelService;
import com.service.impl.OrderService;
import com.service.impl.RoomTypeService;
import com.vo.GuestVo;
import com.vo.OrderVo;

public class InnOrderAction extends ActionDispatcher{

	private IOrderService innorderService;
	private IRoomTypeService roomTypeService;
	private IHotelService hotelService;
	private IGuestService guestService;
	
	public InnOrderAction (){
		
		innorderService=new OrderService();
		roomTypeService=new RoomTypeService();
		hotelService=new HotelService();
		guestService=new GuestService();
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
			PageBean page=new PageBean(innorderService.queryCount(param),10);;
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
			List Orders=innorderService.queryWithOptions(param, page.getCurPage(), page.getRowsPrePage());
			Log.log(this, "orders.size:"+Orders.size());
					
			Map orders=new HashMap();
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
	
	public ActionForward InnOrder(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		Log.log(this, "InnOrder");
		System.out.println("进入到InnOrder----hotelid="+request.getParameter("hotelid")+"----");
		System.out.println("roomTypeid="+request.getParameter("roomTypeid"));
		System.out.println("roomPrice="+request.getParameter("roomPrice"));
		
		//获得客户端传递的参数
		//GuestVo guest=(GuestVo)request.getSession().getAttribute("guest");

		OrderVo order=new OrderVo();
		//order.setUserId(Integer.parseInt(guest.getGuestId()));
		order.setUserId(Integer.parseInt(request.getParameter("guestId")));
		order.setHotelId(Integer.parseInt(request.getParameter("hotelid")));
		order.setRoomTypeId(Integer.parseInt(request.getParameter("roomTypeid")));
		//order.setDeposit(Integer.parseInt(request.getParameter("deposit")));
		order.setDeposit(200);//押金
		order.setRoomNum(Integer.parseInt(request.getParameter("room_num_sel")));
		order.setCheckIn(request.getParameter("dtStart"));
		order.setCheckOut(request.getParameter("dtEnd"));
		order.setCost(Integer.parseInt(request.getParameter("roomPrice"))*Integer.parseInt(request.getParameter("room_num_sel")));
		int orderFlag=innorderService.addorder(order);
		response.setCharacterEncoding("utf-8");
		Log.log(this, "orderFlag="+orderFlag);
		try {
			if(orderFlag<1){
				response.getWriter().println("<script>alert('预定失败')<script>");
				return mapping.findForward( "error" );
				
			}else{
				response.getWriter().println("<script>alert('预定成功')<script>");
				return mapping.findForward("success");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mapping.findForward("success");
		
	}
	
	public int validate(HttpServletRequest request){
		
		Map<String,String> param=getRequestParameter(request);
		//判断用户是否有输入所有的需要的数据，如果没有提示用户输入
		String[] paramsNeeded={"guestName","idCard","hotelName","roomTypeName","deposit","checkIn","checkOut"};
		Set<String> paramName=param.keySet();
		Iterator iterator=paramName.iterator();
		while(iterator.hasNext()){
			iterator.next();
		}
		return 1;
	}
	
}
