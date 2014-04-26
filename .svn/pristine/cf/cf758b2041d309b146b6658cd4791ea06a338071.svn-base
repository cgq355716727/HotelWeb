package com.service.impl;

import java.util.List;

import com.dao.IRoomTypeDao;
import com.dao.impl.RoomTypeDao;
import com.service.IRoomTypeService;
import com.vo.RoomTypeVo;

public class RoomTypeService implements IRoomTypeService {
	
	private IRoomTypeDao roomTypeDao;
	
	public RoomTypeService(){
		roomTypeDao=new RoomTypeDao();
	}

	public List<RoomTypeVo> queryAll() {
		// TODO Auto-generated method stub
		return roomTypeDao.queryAll();
	}

	public int queryRoomTypeId(String roomTypeName) {
		// TODO Auto-generated method stub
		return roomTypeDao.queryRoomTypeId(roomTypeName);
	}

	public int addRoomType(RoomTypeVo vo) {
		// TODO Auto-generated method stub
		return roomTypeDao.addRoomType(vo);
	}

	public int delRoomType(int roomTypeId) {
		// TODO Auto-generated method stub
		return roomTypeDao.delRoomType(roomTypeId);
	}

	public int updRoomType(RoomTypeVo vo) {
		// TODO Auto-generated method stub
		return roomTypeDao.updRoomType(vo);
	}

}
