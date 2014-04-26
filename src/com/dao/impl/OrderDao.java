package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.commons.ConnTools;
import com.commons.Constants;
import com.commons.Log;
import com.dao.IOrderDao;
import com.vo.OrderViewVo;
import com.vo.OrderVo;

public class OrderDao implements IOrderDao {

	
	public List<Map> queryWithOptions(Map param, int curPage, int rowsPerPage) {
		
		Connection conn=ConnTools.getConnecton();
		String sql="select * from (select rownum r, o.* from order_view o where";
		if(param!=null){
			if(param.get("roomType")!=null&&!param.get("roomType").equals("请选择")&&!param.get("roomType").equals("")){
				sql+=" Room_Type_name='"+param.get("roomType")+"' and"; 
			}
			if(param.get("hotelName")!=null&&!param.get("hotelName").equals("请选择")&&!param.get("hotelName").equals("")){
					sql+=" hotel_name='"+param.get("hotelName")+"' and";
			}
			if(param.get("checkIn")!=null&&!param.get("checkIn").equals("")&&!param.get("checkIn").equals("undefined")){				
					sql+=" check_in >= to_date('"+param.get("checkIn")+"','mm/dd/yyyy') and";
			}
			if(param.get("checkOut")!=null&&!param.get("checkOut").equals("")&&!param.get("checkOut").equals("undefined")){				
					sql+=" check_out >= to_date('"+param.get("checkOut")+"','mm/dd/yyyy') and";			
			}
			if(param.get("guestName")!=null&&!param.get("guestName").equals("")){
				sql+=" guest_name='"+param.get("guestName")+"' and"; 
			}
			if(param.get("idCard")!=null&&!param.get("idCard").equals("")){
					sql+=" id_card='"+param.get("idCard")+"' and";
			}
			if(param.get("state")!=null){
				sql+=" state='"+param.get("state")+"' and";
			}
		}
		sql+=" rownum<="+curPage*rowsPerPage+") where r>="+((curPage-1)*rowsPerPage+1);
		//rownum<=?) where r>=?";
		System.out.println("sql:"+sql);
		Statement stmt=null;
		ResultSet rs=null;
		List list=new ArrayList();
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				
				Map item=new HashMap();
				item.put("order_Id", rs.getInt("order_id"));
				item.put("hotel_name", rs.getString("hotel_name"));
				item.put("Room_Type_name", rs.getString("Room_Type_name"));
				item.put("room_no", rs.getString("room_no"));
				item.put("guest_name", rs.getString("guest_name"));
				item.put("id_card", rs.getString("id_card"));
				item.put("check_in", rs.getString("check_in"));
				item.put("check_out", rs.getString("check_out"));
				item.put("deposit", rs.getFloat("deposit"));
				item.put("cost", rs.getFloat("cost"));
				item.put("state", rs.getString("state"));	
				list.add(item);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			ConnTools.close(conn, null,rs);
		}
		return list;
	}

	public int queryCount(Map param) {

		int flag=0;
		Connection conn=ConnTools.getConnecton();
		String sql="select count(*) from order_view where";
		if(param!=null){
			if(param.get("roomType")!=null&&!param.get("roomType").equals(Constants.DEFAULT_SELECT_TEXT)){
				sql+=" Room_Type_name='"+param.get("roomType")+"' and"; 
			}
			if(param.get("hotelName")!=null&&!param.get("hotelName").equals(Constants.DEFAULT_SELECT_TEXT)){
					sql+=" hotel_name='"+param.get("hotelName")+"' and";
			}
			if(param.get("checkIn")!=null&&!param.get("checkIn").equals("")){				
					sql+=" check_in >= to_date('"+param.get("checkIn")+"','mm/dd/yyyy') and";
			}
			if(param.get("checkOut")!=null&&!param.get("checkOut").equals("")){				
					sql+=" check_out >= to_date('"+param.get("checkOut")+"','mm/dd/yyyy') and";			
			}
			if(param.get("guestName")!=null&&!param.get("guestName").equals("")){
				sql+=" guest_name='"+param.get("guestName")+"' and"; 
			}
			if(param.get("idCard")!=null&&!param.get("idCard").equals("")){
					sql+=" id_card='"+param.get("idCard")+"' and";
			}
			if(param.get("state")!=null){
				sql+=" state='"+param.get("state")+"' and";
			}
			if(sql.endsWith("and")){
				sql=sql.substring(0, sql.lastIndexOf("and"));
			}
		}
		if(sql.endsWith("where")){
			sql=sql.substring(0, sql.lastIndexOf("where"));
		}
		Statement stmt=null;
		ResultSet rs=null;
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			if(rs.next()){				
				flag=rs.getInt(1);				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			ConnTools.close(conn, null,rs);
		}
		return flag;
	}

	public int insert(OrderVo vo) {
		// TODO Auto-generated method stub
		int flag=0;
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		ResultSet rs=null;
		String sql="insert into orderlist values(seq_orderid.nextval,?,?,?,?,to_date(?,'dd/MM/yyyy'),to_date(?,'dd/MM/yyyy'),to_date(?,'dd/MM/yyyy'),?,?,?)";
		try{
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, vo.getUserId());
			stmt.setInt(2, vo.getHotelId());
			stmt.setInt(3, vo.getRoomTypeId());
			stmt.setInt(4, vo.getRoomId());
			stmt.setString(5,vo.getCheckIn());
			stmt.setString(6, vo.getCheckOut());
			stmt.setString(7, vo.getOrderDate());
			stmt.setFloat(8, vo.getDeposit());
			stmt.setFloat(9, vo.getCost());
			stmt.setInt(10, vo.getState());
			flag=stmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}

	public int addorder(OrderVo vo) {
		// TODO Auto-generated method stub
		Log.log(this, "addorder");
		int flag=0;
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		ResultSet rs=null;
		//String sql="insert into orderlist values(seq_orderid.nextval,?,?,?,?,to_date(?,'dd/MM/yyyy'),to_date(?,'dd/MM/yyyy'),to_date(?,'dd/MM/yyyy'),?,?,?)";
		String sql="insert into orderlist values(seq_orderid.nextval,?,?,?,null,?,sysdate,to_date(?,'yyyy-MM-dd'),to_date(?,'yyyy-MM-dd'),?,?,?)";
		
		try{
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, vo.getHotelId()); //酒店号
			stmt.setInt(2, vo.getUserId());  //用户id
			stmt.setInt(3, vo.getRoomTypeId()); //房间类型
			stmt.setInt(4, vo.getRoomNum());  //房间数量
			
			//-房间数量   预订时无房号
			//stmt.setInt(parameterIndex, x)
			stmt.setString(5,vo.getCheckIn());
			stmt.setString(6, vo.getCheckOut());
			//stmt.setString(7, vo.getOrderDate());

			//stmt.setFloat(7, vo.getDeposit());
			stmt.setFloat(7, 200);
			//stmt.setFloat(9, vo.getCost());
			//stmt.setInt(10, vo.getState());
			stmt.setFloat(8, vo.getCost());
			stmt.setInt(9, 1);
			flag=stmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}

	public int updateOrder(OrderVo vo) {
		// TODO Auto-generated method stub
		Connection conn=ConnTools.getConnecton();
		
		Statement stmt=null;
		ResultSet rs=null;
		int flag=0;
		String sql="update orderlist set";
		if(vo.getRoomTypeId()!=0){
			
				sql+=" room_type_id="+vo.getRoomTypeId()+" ,";
		}
		if(vo.getRoomId()!=0){
		
				sql+=" room_id="+vo.getRoomId()+" ,";

			
		}
		if(vo.getCheckIn()!=null&&vo.getCheckIn()!=null){
			sql+=" check_in=to_date('"+vo.getCheckIn()+"','yyyy-mm-dd') ,";
		}
		if(vo.getCheckOut()!=null&&vo.getCheckOut()!=""){
			sql+=" check_out=to_date('"+vo.getCheckOut()+"','yyyy-mm-dd') ,";
		}
		if(vo.getDeposit()!=0L){
			sql+=" deposit="+vo.getDeposit()+" ,";
		}
		if(vo.getCost()!=0L){
			sql+=" cost="+vo.getCost()+" ,";
		}
		if(vo.getState()!=0){
			sql+=" state="+vo.getState();
		}
		if(sql.endsWith(",")){
			sql=sql.substring(0,sql.lastIndexOf(","));
		}
		sql+=" where order_id="+vo.getOrderId();
		
		try{
			stmt=conn.createStatement();
			flag=stmt.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			Log.log(this, sql);
			ConnTools.close(conn, stmt);
		}	
		return flag;
	}

	
}
