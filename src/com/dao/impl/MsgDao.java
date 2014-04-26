package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.jsp.tagext.TryCatchFinally;

import com.commons.ConnTools;
import com.commons.Constants;
import com.commons.Log;
import com.dao.IMsgDao;
import com.vo.MsgVo;

	//分页查询留言信息
	public class MsgDao implements IMsgDao{
		//分页查询留言信息
		public List<MsgVo> showMsgInfo(int curPage, int rowsPrePage) {
			// TODO Auto-generated method stub
			Connection conn = null;
			PreparedStatement stmt =null;
			ResultSet rs = null;
			List<MsgVo> list = new ArrayList<MsgVo>();
			MsgVo vo = null;
			
			try {
				conn = ConnTools.getConnecton();
				stmt = conn.prepareStatement(Constants.QUERY_MSG_INFO);
				stmt.setInt(1,curPage*rowsPrePage);
				stmt.setInt(2, (curPage-1)*rowsPrePage+1);
				rs =stmt.executeQuery();
				while(rs.next()){
					
					vo =new MsgVo();
					vo.setMsgId(rs.getInt("Msg_Id"));
					vo.setMsgTitle(rs.getString("Msg_Title"));
					vo.setMsgContent(rs.getString("Msg_Content"));
					vo.setMsgDate(rs.getDate("Msg_Data"));
					//vo.setGuest_Id(rs.getInt("Guest_Id "));
					list.add(vo);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				Log.log(this, "showMsgInfo:"+e.getMessage());
				e.printStackTrace();
			}finally{
				Log.log(this, "showMsgInfo:"+Constants.QUERY_MSG_INFO);
				ConnTools.close(conn, stmt, rs);
			}
			
			return list;
		}
		//查询留言总数
		public int queryMsgCount() {
			// TODO Auto-generated method stub
			
			Connection conn = null;
			PreparedStatement stmt = null;
			ResultSet rs = null;
			int count = 0;
			
			try {
				conn = ConnTools.getConnecton();
				stmt = conn.prepareStatement(Constants.QUERY_MSG_COUNT);
				rs =stmt.executeQuery();
				if(rs.next()){
					count = rs.getInt(1);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				Log.log(this, "queryMsgCount:"+e.getMessage());
				e.printStackTrace();
			}finally{
				Log.log(this, "queryMsgCount:"+Constants.QUERY_MSG_COUNT);
				ConnTools.close(conn, stmt, rs);
				
			}
			return count;
		}
		//提交留言
		public int saveMsg(MsgVo vo) {
			// TODO Auto-generated method stub
			Connection conn = null;
			PreparedStatement stmt= null;
			
			int flag = 0;
			
			try {
				conn = ConnTools.getConnecton();
				stmt = conn.prepareStatement(Constants.ADD_MSG_INFO);
				stmt.setString(1,vo.getMsgTitle() );
				stmt.setString(2, vo.getMsgContent());
				//stmt.setInt(3, vo.getGuest_Id());
				flag = stmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				Log.log(this, "saveMsg:"+e.getMessage());
				e.printStackTrace();
			}finally{
				Log.log(this, "saveMsg:"+Constants.ADD_MSG_INFO);
				ConnTools.close(conn, stmt);
			}
			return flag;
		}
		public int delMsg(int msg_id) {
			// TODO Auto-generated method stub
			Connection conn = null;
			PreparedStatement stmt= null;	
			int flag = 0;
			try {
				conn = ConnTools.getConnecton();
				stmt = conn.prepareStatement(Constants.DEL_MSG_INFO);
				stmt.setInt(1, msg_id);
				flag = stmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				Log.log(this, "delMsg:"+e.getMessage());
				e.printStackTrace();
			}finally{
				Log.log(this, "delMsg:"+Constants.DEL_MSG_INFO);
				ConnTools.close(conn, stmt);
			}
			return flag;
		}

	}


