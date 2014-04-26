package com.service;

import java.util.List;
import java.util.Map;

import com.vo.RoomVo;

public interface IRoomService {
	
	public int queryRoomId(String roomNo,int hotelId);
	
	public List<String> queryRoomNo(int roomTypeId,int hotelId);
	
	public int addRoom(RoomVo vo);
	
	public int updateRoom(RoomVo vo);
	
	public int delRoom(int roomId);
	
	public List<Map> queryRooms(int hotelId);

}
