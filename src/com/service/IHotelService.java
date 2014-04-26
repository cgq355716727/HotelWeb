package com.service;

import java.util.List;
import java.util.Map;

import com.vo.HotelVo;
import com.vo.RoomTypeVo;

public interface IHotelService {

	//查询所有酒店的房型
	public List<HotelVo> queryallRoomTypeVolList(int curPage, int rowsPrePage);
	
	//查询一个酒店的房型
	public List<RoomTypeVo> queryRoomTypeVolList(int HotelId);
	

	//查询酒店的总数量
	public int queryHotelCount();
	
	//查询所有的宾馆
	public List<HotelVo> queryHotelList();
	
	//搜索的宾馆
	public List<HotelVo> searchHotel(int curPage, int rowsPrePage, String city,
			String distinct);
	//根据酒店名查询酒店的ID
	public int queryHotelId(String hotelName);
	
	//查询一个ID返回酒店信息
	public HotelVo queryHotelVo(int hotelid);
	
	//通过房型id查询房型的信息
	public RoomTypeVo queryRoomTypeVo(int roomTypeid);

	public int searchHotelCount(String CITY,String DISTINCT);

	
	//根据酒店的id查询酒店的名字
	public String queryHotelName(int hotelId);

}
