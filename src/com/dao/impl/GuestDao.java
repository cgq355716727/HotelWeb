package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import sun.text.resources.FormatData;

import com.commons.ConnTools;
import com.commons.Constants;
import com.commons.Log;
import com.dao.IGuestDao;
import com.vo.GuestVo;
import com.vo.OrderListVo;
import com.vo.OrderViewVo;

public class GuestDao  implements IGuestDao{

	public void Login(GuestVo vo) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try{
			conn = ConnTools.getConnecton();
			stmt = conn.prepareStatement(Constants.VALIDATE_GUEST_INFO);
			Log.log(this, "~~~~~~~~~Login()sql="+Constants.VALIDATE_GUEST_INFO);
			//set parameter
			stmt.setString( 1, vo.getGuestName());
			stmt.setString( 2, vo.getGuestPw());
			System.out.println("vo.getGuest_Name():"+vo.getGuestName());
			System.out.println("vo.getGuest_PW():"+vo.getGuestPw());
			//execute
			rs = stmt.executeQuery();
			int flag = 0;
			if( rs.next() ){
				//flag =rs.getInt("Guest_Id");
				//System.out.println(rs.getString(1));
				//System.out.println(rs.getInt( 2 ));
				vo.setGuestId( rs.getString("Guest_Id"));
				vo.setGuestType( rs.getInt("Guest_Type") );
				vo.setGuestName(rs.getString("Guest_Name"));
				vo.setIdCard(rs.getString("ID_CARD"));
				flag++;
			}
			//return flag;
			System.out.println("flag:"+flag);
			Log.log(this, "flag:"+flag);
			
		}catch( SQLException e ){
			Log.log(this, "Login:"+e.getMessage());
			e.printStackTrace();
		}finally{
			
			Log.log(this, "Login:IdCard="+vo.getIdCard());
			
			ConnTools.close(conn, stmt, rs);
		}
		
	}

	public int Register(GuestVo vo) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement stmt = null;
		
		int flag=0;
		try{
			conn = ConnTools.getConnecton();
			stmt = conn.prepareStatement(Constants.ADD_GUEST_INFO);
			//set parameter
			stmt.setString(1, vo.getGuestName());
			stmt.setString(2,vo.getGuestPw());
			stmt.setString(3, vo.getIdCard());
			stmt.setInt(4, vo.getGuestType());
			stmt.setString(5, vo.getGuestMobile());
			//execute
			flag=stmt.executeUpdate();
			 
		}catch( SQLException e ){
			Log.log(this, "Register:"+e.getMessage());
			e.printStackTrace();
		}finally{
			Log.log(this, Constants.ADD_GUEST_INFO);
			ConnTools.close(conn, stmt);
		}
		return flag;
	}
	//修改用户信息
	public int modify(GuestVo vo) {
		// TODO Auto-generated method stu
		
		Connection conn = null;
		PreparedStatement stmt = null;
		int flag = 0;
		conn = ConnTools.getConnecton();
		try {
			stmt = conn.prepareStatement(Constants.MODIFY_GUEST_INFO);
			stmt.setString(1, vo.getGuestPw());
			stmt.setString(2, vo.getGuestName());
			
			flag = stmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}

	
	public List<OrderViewVo> showOrderList(int curPage, int rowsPrePage,String idCard) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement stmt =null;
		ResultSet rs = null;
		List<OrderViewVo> list = new ArrayList<OrderViewVo>();
		OrderViewVo vo = null;
		String sql=null;
		try {
			conn = ConnTools.getConnecton();
			//stmt = conn.prepareStatement(Constants.QUERY_ORDER_INFO);
			Log.log(this, "idCard="+idCard+"从"+((curPage-1)*rowsPrePage+1)+"行到"+curPage*rowsPrePage+"行");
			if(idCard.equals("")||idCard!=null){
				sql="SELECT xx.* FROM( SELECT t.*,row_number() over(ORDER BY ORDER_ID)AS num FROM order_view t WHERE id_card = ? )xx WHERE num BETWEEN ? and ?";
			}
			//sql = "SELECT xx.* FROM( SELECT t.*,row_number() over(ORDER BY ORDER_ID)AS num FROM order_view t WHERE id_card ='435767894793671465' )xx WHERE num BETWEEN 0 AND 5";
			//sql = "SELECT xx.* FROM( SELECT t.*,row_number() over(ORDER BY ORDER_ID)AS num FROM order_view t WHERE id_card = ? )xx WHERE num BETWEEN ? AND ?";
			
			Log.log(this,sql);
			
			stmt = conn.prepareStatement(sql);
			stmt.setString(1,idCard);
			stmt.setInt(2,(curPage-1)*rowsPrePage+1);
			//stmt.setString(2,(curPage-1)*rowsPrePage +" AND "+ curPage*rowsPrePage);
			//Log.log(this,"第二个参数"+(curPage-1)*rowsPrePage +" AND "+ curPage*rowsPrePage);
			
			stmt.setInt(3,curPage*rowsPrePage);

			rs =stmt.executeQuery();
			while(rs.next()){
				
				vo =new OrderViewVo();
				vo.setOrderId(rs.getInt("order_id"));
				vo.setHotelName(rs.getString("hotel_name"));
				vo.setRoomTypeName(rs.getString("room_Type_name"));
				vo.setCheckIn(new SimpleDateFormat("yyyy-MM-dd").format(rs.getDate("check_in")));
				
				vo.setCheckOut(new SimpleDateFormat("yyyy-MM-dd").format(rs.getDate("check_out")));
				//FormatData();
				//vo.setCheckOut(rs.getDate("check_out"));
				vo.setState(rs.getInt("state"));
				vo.setCost(rs.getInt("cost"));
				
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			Log.log(this, "showOrderList:"+e.getMessage());
			e.printStackTrace();
		}finally{
			Log.log(this, "showOrderList: finally----list.size"+ list.size()+"vo.getCost()="+vo.getCost());
			ConnTools.close(conn, stmt, rs);
		}
		return list;
	}

	//查询顾客自己的订单总数
	public int queryOrderCount(String idCard) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		int count = 0;
		
		try {
			conn = ConnTools.getConnecton();
			stmt = conn.prepareStatement(Constants.QUERY_ORDER_COUNT);
			stmt.setString(1, idCard);
			rs =stmt.executeQuery();
			if(rs.next()){
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			Log.log(this, "queryOrderCount:"+e.getMessage()+"idCard"+idCard);
			e.printStackTrace();
		}finally{
			Log.log(this, "queryOrderCount:"+Constants.QUERY_ORDER_COUNT);
			ConnTools.close(conn, stmt, rs);
			
		}
		return count;
	}

	
	public int queryByIdCard(String idCard) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		int flag=0;
		String sql="select guest_id from guest where id_card=?";
		try{
			conn = ConnTools.getConnecton();
			stmt = conn.prepareStatement(Constants.ADD_GUEST_INFO);
			//set parameter
			stmt.setString(1, idCard);
			//execute
			rs=stmt.executeQuery();
			if(rs.next()){
				flag=rs.getInt(1);
			}
			
		}catch( SQLException e ){
			e.printStackTrace();
		}finally{
			Log.log(this, sql);
			ConnTools.close(conn, stmt, rs);
		}
		return flag;
	}

}
