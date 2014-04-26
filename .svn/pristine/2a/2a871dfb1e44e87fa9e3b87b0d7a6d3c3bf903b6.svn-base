package com.service.impl;

import java.util.List;
import java.util.Map;

import com.dao.IRoomDao;
import com.dao.impl.RoomDao;
import com.service.IRoomService;
import com.vo.RoomVo;

public class RoomService implements IRoomService {
	
	private IRoomDao roomDao;
	
	public RoomService(){
		roomDao=new RoomDao();
	}
	
	public int queryRoomId(String roomNo,int hotelId){
		return roomDao.queryRoomId(roomNo, hotelId);
	}
	
	public int addRoom(RoomVo vo){
		return roomDao.addRoom(vo);
	}
	
	public int updateRoom(RoomVo vo){
		return roomDao.updateRoom(vo);
	}
	
	public int delRoom(int roomId){
		return roomDao.delRoom(roomId);
	}

	public List<String> queryRoomNo(int roomTypeId, int hotelId) {
		// TODO Auto-generated method stub
		return roomDao.queryRoomNo(roomTypeId, hotelId);
	}

	public List<Map> queryRooms(int hotelId) {
		// TODO Auto-generated method stub
		return roomDao.queryRooms(hotelId);
	}

}
