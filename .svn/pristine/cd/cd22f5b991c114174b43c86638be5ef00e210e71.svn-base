package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.commons.ConnTools;
import com.commons.Log;
import com.dao.IRoomTypeDao;
import com.vo.RoomTypeVo;

public class RoomTypeDao implements IRoomTypeDao {

	public List<RoomTypeVo> queryAll() {
		// TODO Auto-generated method stub
		List<RoomTypeVo> list=new ArrayList<RoomTypeVo>();
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		ResultSet rs=null;
		String sql="select * from roomType";
		try {
			stmt=conn.prepareStatement(sql);
			rs=stmt.executeQuery();
			while(rs.next()){
				RoomTypeVo vo=new RoomTypeVo();
				vo.setRoomTypeid(rs.getInt(1));
				vo.setRoomTypename(rs.getString(2));
				vo.setRoomPrice(rs.getInt(3));
				vo.setIntroduction(rs.getString("introduction"));
				vo.setImageUrl(rs.getString("imageurl"));
				list.add(vo);
			}
			Log.log(this, "list.size:"+list.size());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			ConnTools.close(conn, stmt, rs);
			Log.log(this, sql);
		}
	
		return list;
	}

	public int queryRoomTypeId(String roomTypeName) {
		// TODO Auto-generated method stub
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		ResultSet rs=null;
		String sql="select room_type_id from roomtype where room_TYPE_name=?";
		int flag=0;
		try{
			stmt=conn.prepareStatement(sql);
			stmt.setString(1, roomTypeName);
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

	public int addRoomType(RoomTypeVo vo) {
		// TODO Auto-generated method stub
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		int flag=0;
		String sql="insert into roomtype values(seq_RoomTypeId.nextval,?,?,?,?)";
		try{
			stmt=conn.prepareStatement(sql);
			stmt.setString(1, vo.getRoomTypename());
			stmt.setInt(2, vo.getRoomPrice());
			stmt.setString(3, vo.getIntroduction());
			stmt.setString(4, vo.getImageUrl());
			flag=stmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			Log.log(this, sql);
			ConnTools.close(conn, stmt);
		}
		return flag;
	}
	
	public int delRoomType(int roomTypeId){
		int flag=0;
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		String sql="delete from roomType where room_type_id=?";
		try{
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, roomTypeId);
			flag=stmt.executeUpdate();

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			ConnTools.close(conn, stmt);
		}
		return flag;
	}
	
	public int updRoomType(RoomTypeVo vo){
		int flag=0;
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		String sql="update roomtype set";
		if(vo.getRoomTypename()!=null){
			sql+=" room_type_name='"+vo.getRoomTypename()+"',";
		}
		if(vo.getRoomPrice()!=0){
			sql+=" room_price="+vo.getRoomPrice()+" ,";
		}
		if(vo.getIntroduction()!=null){
			sql=" introduction='"+vo.getIntroduction()+"' ,";
		}
		if(vo.getImageUrl()!=null){
			sql+=" ,imageurl="+vo.getImageUrl();
		}
		if(sql.endsWith(",")){
			sql=sql.substring(0,sql.lastIndexOf(","));
		}
		sql+=" where room_type_id="+vo.getRoomTypeid();
		try{
			stmt=conn.prepareStatement(sql);
			flag=stmt.executeUpdate();

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			ConnTools.close(conn, stmt);
			Log.log(this, sql);
		}
		return flag;
	}

}
