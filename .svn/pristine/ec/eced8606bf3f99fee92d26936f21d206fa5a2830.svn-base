package com.dao;

import java.util.List;
import java.util.Map;

import com.vo.HotelVo;
import com.vo.RoomTypeVo;

public interface IHotelDao {
	
	//查询所有的宾馆
	public List<HotelVo> queryHotelList();
	
	//public List<RoomTypeVo> queryRoomTypeVolList(int HotelId);
	
	//显示所以分店宾馆的房间类型
	public List<HotelVo> queryallRoomTypeVolList(int curPage, int rowsPrePage);
	
	public int queryHotelCount();
	
	//根据酒店名查询酒店的ID
	public int queryHotelId(String hotelName);
	
	
	//查询一个酒店的具体信息
	public HotelVo queryHotelVo(int HotelId);
	
	//通过id查询房型的信息
	public RoomTypeVo queryRoomTypeVo(int roomTypeid);
		
		
	//搜索记录search
	public List<HotelVo> searchHotel(int curPage, int rowsPrePage,String city, String distinct);

	//搜索宾馆的数量
	public int searchHotelCount(String city, String distinct);

	//根据酒店的id查询酒店的名字
	public String queryHotelName(int hotelId);
	
	//查询一个酒店的房型
	public List<RoomTypeVo> queryRoomTypeVolList(int HotelId);
	
}
