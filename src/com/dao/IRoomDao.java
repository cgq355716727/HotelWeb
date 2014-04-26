package com.dao;

import java.util.List;
import java.util.Map;

import com.vo.RoomVo;

public interface IRoomDao {
	
	public int queryRoomId(String roomNo,int hotelId);
	
	public int addRoom(RoomVo vo);
	
	public int updateRoom(RoomVo vo);
	
	public int delRoom(int roomId);

	public List<String> queryRoomNo(int roomTypeId, int hotelId);

	public List<Map> queryRooms(int hotelId);

}
