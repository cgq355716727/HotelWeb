package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.commons.ConnTools;
import com.commons.Log;
import com.dao.IRoomDao;
import com.vo.RoomVo;

public class RoomDao implements IRoomDao {

	public int queryRoomId(String roomNo, int hotelId) {
		// TODO Auto-generated method stub
		int flag=0;
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		ResultSet rs=null;
		String sql="select room_id from room where room_no=? and hotel_Id=?";
		try{
			stmt=conn.prepareStatement(sql);
			stmt.setString(1, roomNo);
			stmt.setInt(2, hotelId);
			rs=stmt.executeQuery();
			if(rs.next()){
				flag=rs.getInt(1);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			Log.log(this, sql);
			ConnTools.close(conn, stmt, rs);
		}
		return flag;
	}

	public List<String> queryRoomNo(int roomTypeId, int hotelId) {
		// TODO Auto-generated method stub
		List<String> rooms=new ArrayList<String>();
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		ResultSet rs=null;
		String sql="select room_no from room where room_type_id=? and hotel_Id=?";
		try{
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, roomTypeId);
			stmt.setInt(2, hotelId);
			rs=stmt.executeQuery();
			while(rs.next()){
				rooms.add(rs.getString(1));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			Log.log(this, sql);
			ConnTools.close(conn, stmt, rs);
		}
		return rooms;
	}
	
	public int addRoom(RoomVo vo) {
		int flag=0;
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		String sql="insert into room values(seq_roomid.nextval,?,?,?,?)";
		try{
			stmt=conn.prepareStatement(sql);
			stmt.setString(1, vo.getRoomNo());
			stmt.setInt(2, vo.getRoomTypeid());
			stmt.setInt(3, vo.getHotel_ID());
			stmt.setInt(4, vo.getRoomState());
			flag=stmt.executeUpdate();

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			Log.log(this, sql);
			ConnTools.close(conn, stmt);
		}
		return flag;
	}
	
	public int updateRoom(RoomVo vo){
		int flag=0;
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		String sql="update room set room_no=?, room_type_id=? where room_id=?";
		try{
			stmt=conn.prepareStatement(sql);
			stmt.setString(1, vo.getRoomNo());
			stmt.setInt(2, vo.getRoomTypeid());
			stmt.setInt(3, vo.getRoomId());
			flag=stmt.executeUpdate();

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			Log.log(this, sql);
			ConnTools.close(conn, stmt);
		}
		return flag;
	}

	
	public int delRoom(int roomId){
		int flag=0;
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		String sql="delete from room where room_id=?";
		try{
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, roomId);
			flag=stmt.executeUpdate();

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			Log.log(this, sql);
			ConnTools.close(conn, stmt);
		}
		return flag;
	}

	public List<Map> queryRooms(int hotelId) {
		// TODO Auto-generated method stub
		List<Map> list=new ArrayList<Map>();
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		ResultSet rs=null;
		String sql="select r.room_id, r.room_no ,rt.room_type_name,rt.room_price,rt.introduction from room r,roomType rt where r.room_type_id=rt.room_type_id and hotel_id=?";
		try{
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, hotelId);
			rs=stmt.executeQuery();
			while(rs.next()){
				Map room=new HashMap();
				list.add(room);
				room.put("roomId", rs.getInt("room_id"));
				room.put("roomNo", rs.getString("room_no"));
				room.put("roomTypename", rs.getString("room_type_name"));
				room.put("roomPrice", rs.getInt("room_price"));
				room.put("introduction", rs.getString("introduction"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			Log.log(this, String.valueOf(list.size()));
			ConnTools.close(conn, stmt, rs);
		}
		return list;
	}
}
