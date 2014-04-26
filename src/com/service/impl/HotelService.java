package com.service.impl;

import java.util.List;
import java.util.Map;

import com.dao.IHotelDao;
import com.dao.impl.HotelDao;
import com.service.IHotelService;
import com.vo.HotelVo;
import com.vo.RoomTypeVo;

public class HotelService implements IHotelService {

	private IHotelDao hoteldao;
	public HotelService(){
		hoteldao = new HotelDao();
	
	}
	public List<HotelVo> queryallRoomTypeVolList(int curPage, int rowsPrePage) {
		// TODO Auto-generated method stub
		System.out.println("hotelservice-----------"+"queryallRoomTypeVolList---------");
		return hoteldao.queryallRoomTypeVolList(curPage, rowsPrePage);
	}
	
	//查询房间总数量
	public int queryHotelCount(){
		
		return hoteldao.queryHotelCount();
		
	}
	public List<HotelVo> queryHotelList() {
		// TODO Auto-generated method stub
		return hoteldao.queryHotelList();
	}


	//搜索记录search
	public List<HotelVo> searchHotel(int curPage, int rowsPrePage,String city, String distinct){
		return hoteldao.searchHotel(curPage,rowsPrePage,city,distinct);
		
	}

	public int queryHotelId(String hotelName) {
		// TODO Auto-generated method stub
		return hoteldao.queryHotelId(hotelName);
	}
	
	//传入一个酒店id返回酒店房型
	public List<RoomTypeVo> queryRoomTypeVolList(int HotelId) {
		// TODO Auto-generated method stub
		return hoteldao.queryRoomTypeVolList(HotelId);
	}
	public HotelVo queryHotelVo(int hotelid) {
		// TODO Auto-generated method stub
		return hoteldao.queryHotelVo(hotelid);
	}
	
	//通过房型id查询房型的信息
		public RoomTypeVo queryRoomTypeVo(int roomTypeid){
			return hoteldao.queryRoomTypeVo(roomTypeid);
		}
		public int searchHotelCount(String CITY, String DISTINCT) {
			// TODO Auto-generated method stub
			return hoteldao.searchHotelCount(CITY,DISTINCT);
		}
		public String queryHotelName(int hotelId) {
			// TODO Auto-generated method stub
			return null;
		}
}
