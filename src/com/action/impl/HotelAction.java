package com.action.impl;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.ActionDispatcher;
import com.action.ActionForm;
import com.action.ActionForward;
import com.action.ActionMapping;
import com.commons.Log;
import com.commons.PageBean;
import com.service.IAdminService;
import com.service.IHotelService;
import com.service.impl.HotelService;
import com.vo.HotelVo;
import com.vo.RoomTypeVo;

public class HotelAction extends ActionDispatcher{

	private IHotelService HService;
	public HotelAction(){
		HService=new HotelService();
	}
	
	//查询所有酒店的列表
	public ActionForward queryallRoomTypeVolList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println( "HotelAction queryallRoomTypeVolList hotel分页" );
		//分页类
		PageBean page = new PageBean(HService.queryHotelCount(),5 );
		//PageBean page = new PageBean(6,5 );
		
		//处理页面
		int jumpPage = Integer.parseInt( request.getParameter( "jumpPage" ) );
		if( jumpPage <=1 ){
			page.setCurPage( 1 );
		}else if( jumpPage >= page.getMaxPage() ){
			page.setCurPage( page.getMaxPage() );
		}else{
			page.setCurPage( jumpPage );
		}
		
		//取当前页的数据
		List<HotelVo> hotellist = HService.queryallRoomTypeVolList(page.getCurPage(), page.getRowsPrePage());

		//把数据添加到request中，返回到页面，显示
		request.setAttribute( "Hotelinfo", hotellist );
		System.out.print("Hotelinfo.size="+hotellist.size());
		request.setAttribute( "page", page );
		
		return mapping.findForward( "success" );

	}

	//searchHotel搜索酒店
	public ActionForward searchHotel(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println( "HotelAction searchHotel hotel分页" );
		String city="";
		String distinct="";
		try {
			city = new String(request.getParameter("city").getBytes("iso8859-1"),"utf-8");
			distinct = new String(request.getParameter("zone").getBytes("iso8859-1"),"utf-8");
			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("city="+city+"distinct="+distinct);
		System.out.println("searchHotelCount="+HService.searchHotelCount(city,distinct));
		//分页类
		PageBean page = new PageBean(HService.searchHotelCount(city,distinct),5);
		//PageBean page = new PageBean(6,5);

		Map<String,String> searchmap =new HashMap<String,String>();
		//取当前页的数据
		searchmap=request.getParameterMap();
		//处理页面
		int jumpPage = 1;
		if(request.getParameter( "jumpPage" )!="" && request.getParameter( "jumpPage" )!=null){
			System.out.println("request.getParameter( 'jumpPage' )"+request.getParameter( "jumpPage" ));
			jumpPage = Integer.parseInt( request.getParameter( "jumpPage" ) );
		}
		
		if( jumpPage <=1 ){
			page.setCurPage( 1 );
		}else if( jumpPage >= page.getMaxPage() ){
			page.setCurPage( page.getMaxPage() );
		}else{
			page.setCurPage( jumpPage );
		}
		System.out.println("page.getCurPage()="+page.getCurPage());
		List<HotelVo> hotellist = HService.searchHotel(page.getCurPage(), page.getRowsPrePage(), city, distinct);

		//把数据添加到request中，返回到页面，显示
		request.setAttribute( "Hotelinfo", hotellist );
		System.out.println("HotelAction searchHotel hotel分页Hotelinfo.size="+hotellist.size());
		request.setAttribute( "page", page );
		request.setAttribute( "searchmap", searchmap );
		
		return mapping.findForward( "success" );

	}

	//HotelPage酒店单页信息
	public ActionForward HotelPage(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		int hotelid = Integer.parseInt(request.getParameter("hotelid"));
		Log.log(this, "HotelPage:"+"hotelid="+hotelid);
		HotelVo vo = new HotelVo();
		vo=HService.queryHotelVo(hotelid);
		

		//把数据添加到request中，返回到页面，显示
		request.setAttribute( "HotelVo", vo );
		Log.log(this, "封装后的数据HotelPage:"+"hotelAbout="+vo.getHotelAbout());
		return mapping.findForward( "page" );

	}


	//查询一个酒店的房型号
	public ActionForward queryRoomTypeVolList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println( "HotelAction 查询一个酒店的房型号 queryallRoomTypeVolList" );
		if(!request.getParameter("hotelid").equals("")){
			System.out.print("hotelid="+request.getParameter("hotelid"));
			//传入酒店id
			int hotelid=Integer.parseInt(request.getParameter("hotelid"));
			
			//传入酒店名称
			int roomTypeid = Integer.parseInt(request.getParameter("roomTypeid"));
			//取当前页的数据
			//List<RoomTypeVo> RoomTypeList = HService.queryRoomTypeVolList(hotelid);
			RoomTypeVo rvo=HService.queryRoomTypeVo(roomTypeid);
			HotelVo hvo = HService.queryHotelVo(hotelid);
			//HService
			//把数据添加到request中，返回到页面，显示
			request.setAttribute( "HotelVo", hvo );
			//System.out.println("RoomTypeList.size="+RoomTypeList.get(1).getRoomTypename());
			request.setAttribute( "RoomTypeVo", rvo );
			//request.setAttribute( "RoomTypeList", RoomTypeList );
			//return mapping.findForward( "innorder" );
			
			return mapping.findForward( "inn_order_confirm");
			
		}
			return mapping.findForward( "error" );
	}

}
