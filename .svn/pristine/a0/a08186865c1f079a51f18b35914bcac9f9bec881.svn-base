package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.commons.ConnTools;
import com.dao.IUserDao;
import com.vo.ResgistVo;
import com.vo.UserVo;


/**
 * title:
 * @author Administrator
 *
 */
public class UserDao implements IUserDao{
	
	//
	public void validateUser(UserVo vo) {
		// TODO Auto-generated method stub
		String sql = "select userid,usertype from user_info where username=? and password=?";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try{
			conn = ConnTools.getConnecton();
			stmt = conn.prepareStatement(sql);
			//set parameter
			stmt.setString( 1, vo.getUsername());
			stmt.setString( 2, vo.getPassword());
			//execute
			rs = stmt.executeQuery();
			if( rs.next() ){
				
				vo.setUserid( rs.getInt( "userid" ) );
				vo.setUsertype( rs.getInt( "usertype" ) );
			}
			
		}catch( SQLException e ){
			e.printStackTrace();
		}finally{
			
			ConnTools.close(conn, stmt, rs);
		}
	}

	public int queryUsername(String username) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	//注册
	public int Resgist(ResgistVo vo) {
		// TODO Auto-generated method stub
		String sql = "INSERT into Guest VALUES(Guest_Id.nextval,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		int flag=0;
		try{
			conn = ConnTools.getConnecton();
			stmt = conn.prepareStatement(sql);
			//set parameter
			stmt.setInt(1, vo.getGuest_Id());
			stmt.setString(2, vo.getGuest_Name());
			stmt.setString(3, vo.getGuest_CARD());
			stmt.setString(4, vo.getGuest_Type());
			stmt.setString(5, vo.getGuest_MOBILE());
			stmt.setString(6, vo.getGuest_SessionID());
			//execute
			flag=stmt.executeUpdate();
			
		}catch( SQLException e ){
			e.printStackTrace();
		}finally{
			
			ConnTools.close(conn, stmt, rs);
		}
		return flag;
	}

}
