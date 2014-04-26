package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.commons.ConnTools;
import com.dao.IAdminDao;
import com.vo.AdminVo;
import com.vo.RoomTypeVo;

public class AdminDao implements IAdminDao{

	public AdminVo validateAdmin(AdminVo vo) {
		// TODO Auto-generated method stub
		String sql="select * from Admin where Admin_name=? and Admin_pw=?";
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		ResultSet rs=null;
		try {
			stmt=conn.prepareStatement(sql);
			stmt.setString(1, vo.getAdminName());
			stmt.setString(2, vo.getAdminPw());
			rs=stmt.executeQuery();
			if(rs.next()){
				vo.setAdminId(rs.getInt(1));
				vo.setAdminType(rs.getInt(4));
				vo.setHotelId(rs.getInt(5));
				vo.setAdminSessionId(rs.getString(6));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			ConnTools.close(conn, null);
		}
		return vo;
	}

	public int addAdmin(AdminVo vo) {
		int flag=0;
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		String sql="insert into admin values(seq_adminid.nextval,?,?,?,?,?)";
		try{
			stmt=conn.prepareStatement(sql);
			stmt.setString(1, vo.getAdminName());
			stmt.setString(2, vo.getAdminPw());
			stmt.setInt(3, vo.getAdminType());
			stmt.setInt(4, vo.getHotelId());
			stmt.setString(5, vo.getAdminSessionId());
			flag=stmt.executeUpdate();

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			ConnTools.close(conn, stmt);
		}
		return flag;
	}
	
	public int updPassword(AdminVo vo){
		int flag=0;
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		String sql="update admin set admin_pw=? where admin_id=?";
		try{
			stmt=conn.prepareStatement(sql);
			stmt.setString(1, vo.getAdminPw());
			stmt.setInt(2, vo.getAdminId());
			flag=stmt.executeUpdate();

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			ConnTools.close(conn, stmt);
		}
		return flag;
	}

	public int delAdmin(int adminId){
		int flag=0;
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		String sql="delete from admin where admin_id=?";
		try{
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, adminId);
			flag=stmt.executeUpdate();

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			ConnTools.close(conn, stmt);
		}
		return flag;
	}
}
