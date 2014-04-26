package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ArrayHandler;
import org.apache.commons.dbutils.handlers.ArrayListHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.commons.ConnTools;
import com.commons.Log;
import com.dao.IHotelDao;
import com.vo.HotelVo;
import com.vo.RoomTypeVo;

public class HotelDao implements IHotelDao{

	public List<HotelVo> queryHotelList() {
		// TODO Auto-generated method stub
	//	QueryRunner runner = new QueryRunner(ConnTools.getDataSource());
		List hotellist=new ArrayList();
		String sql="select * from hotel";
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		ResultSet rs=null;
		try {
			stmt=conn.prepareStatement(sql);
			rs=stmt.executeQuery();
			while(rs.next()){
				
				HotelVo vo=new HotelVo();
				vo.setHotelId(rs.getInt("hotel_id"));
				vo.setHotelName(rs.getString("hotel_name"));
				vo.setCity(rs.getString("city"));
				vo.setDistrict(rs.getString("district"));
				vo.setHotelAddress(rs.getString("hotel_address"));
				vo.setProvince(rs.getString("province"));
				hotellist.add(vo);
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}finally{
			ConnTools.close(conn, stmt, rs);
		}
		
//		try {
//			
//			//List hlist;
//			//hotellist= runner.query(sql,new ArrayListHandler());
//		//	hotellist = (List<HotelVo>) runner.query(sql,new BeanListHandler(HotelVo.class));
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
		return hotellist;
		
	}
	
	//查询一个酒店的房型
	public List<RoomTypeVo> queryRoomTypeVolList(int HotelId) {
		// TODO Auto-generated method stub
		System.out.println("queryRoomTypeVolList---查询一个酒店的房型");
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		List<RoomTypeVo> roomTypeList=new ArrayList();
		//String sql="select * from hotel";
		String sql = "SELECT distinct ROOM.ROOM_TYPE_ID,ROOMTYPE.ROOM_TYPE_NAME,ROOMTYPE.ROOM_PRICE,ROOM.HOTEL_ID FROM ROOM,ROOMTYPE WHERE ROOM.ROOM_TYPE_ID=ROOMTYPE.ROOM_TYPE_ID and HOTEL_id=?";
		try {

			roomTypeList = new ArrayList<RoomTypeVo>();
			conn = ConnTools.getConnecton();
			stmt = conn.prepareStatement(sql);
			stmt.setInt( 1, HotelId);
			rs = stmt.executeQuery();
			while( rs.next() ){
				RoomTypeVo rtvo=new RoomTypeVo();
				rtvo.setRoomTypeid(rs.getInt("room_Type_id"));
				rtvo.setRoomTypename(rs.getString("room_Type_name"));
				rtvo.setRoomPrice(rs.getInt("room_Price"));
				//rtvo.setIntroduction(rs.getString("introduction"));
				//rtvo.setImageUrl(rs.getString("imageUrl"));
				roomTypeList.add(rtvo);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("roomTypeList.size="+roomTypeList.size());
		return roomTypeList;
		
	}

	//查询一个酒店的具体信息
	public HotelVo queryHotelVo(int HotelId) {
		// TODO Auto-generated method stub
		System.out.println("queryHotelVo---查询一个酒店的具体信息");
		String sql="SELECT * FROM HOTEL WHERE HOTEL_id=?";
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		ResultSet rs=null;

		HotelVo vo=new HotelVo();
		try {
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, HotelId);
			rs=stmt.executeQuery();
			while(rs.next()){
				vo.setHotelId(rs.getInt("hotel_id"));
				vo.setHotelName(rs.getString("hotel_name"));
				vo.setCity(rs.getString("city"));
				vo.setDistrict(rs.getString("district"));
				vo.setHotelAddress(rs.getString("hotel_address"));
				vo.setProvince(rs.getString("province"));
				vo.setHotelAbout(rs.getString("Hotel_about"));
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}finally{
			ConnTools.close(conn, stmt, rs);
		}
		System.out.print("封装后的信息"+vo.getHotelName());
		return vo;
		
	}

	//通过房型id查询房型的信息
	public RoomTypeVo queryRoomTypeVo(int roomTypeid) {
		// TODO Auto-generated method stub
		System.out.println("queryRoomTypeVo---通过id查询房型的信息");
		String sql="SELECT * FROM ROOMTYPE WHERE ROOM_TYPE_ID=?";
		Connection conn=ConnTools.getConnecton();
		PreparedStatement stmt=null;
		ResultSet rs=null;

			

		RoomTypeVo vo=new RoomTypeVo();
		try {
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, roomTypeid);
			rs=stmt.executeQuery();
			
			while(rs.next()){
				
				vo.setRoomTypeid(rs.getInt("room_Type_id"));
				vo.setRoomTypename(rs.getString("room_Type_name"));
				vo.setRoomPrice(rs.getInt("room_Price"));
				vo.setIntroduction(rs.getString("introduction"));
				vo.setImageUrl(rs.getString("imageUrl"));
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}finally{
			ConnTools.close(conn, stmt, rs);
		}
		System.out.print("封装后的信息"+vo.getRoomTypename());
		return vo;
		
	}

	//dbutil查询一个酒店的房型
	public List<RoomTypeVo> queryRoomTypeVolList1(int HotelId) {
		// TODO Auto-generated method stub
		System.out.println("queryRoomTypeVolList---查询一个酒店的房型");
		QueryRunner runner = new QueryRunner(ConnTools.getDataSource());
		List RoomTypeList=new ArrayList();
		//String sql="select * from hotel";
		String sql = "SELECT distinct ROOM.ROOM_TYPE_ID,ROOMTYPE.ROOM_TYPE_NAME,ROOM.HOTEL_ID FROM ROOM,ROOMTYPE WHERE ROOM.ROOM_TYPE_ID=ROOMTYPE.ROOM_TYPE_ID and HOTEL_id=?";
		try {

			RoomTypeList= runner.query(sql,new ArrayListHandler(),HotelId);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return RoomTypeList;
		
	}
	
	//显示所有分页
	public List<HotelVo> queryallRoomTypeVolList(int curPage, int rowsPrePage) {
		System.out.println("连接数据库hoteldao----queryallRoomTypeVolList");
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		Connection roomtypeconn = null;
		PreparedStatement roomtypestmt = null;
		ResultSet roomtypers = null;
	
//		String sql = "select * from ( "
//				   +" select rownum as rownumber,c.* from( "
//				   +" select a.* from hotel a "
//				   +" order by HOTEL_ID desc)c where rownum <=?)b where  b.rownumber >=?";
		
		String sql = "SELECT * FROM ( SELECT ROWNUM AS rownumber, c.* FROM ( SELECT A .* FROM hotel A ORDER BY HOTEL_ID DESC ) c WHERE ROWNUM <=?) b WHERE b.rownumber >=?";
		//所以分店具体店型列表
		List<HotelVo> hotellist = new ArrayList<HotelVo>();
		HotelVo vo = null;
		try{
			conn = ConnTools.getConnecton();
			stmt = conn.prepareStatement(sql);
			//set parameter
			stmt.setInt( 1, curPage*rowsPrePage);
			stmt.setInt( 2, (curPage-1)*rowsPrePage+1);
			//execute
			rs = stmt.executeQuery();
			while( rs.next() ){
				
				//new
				vo = new HotelVo();
				vo.setHotelId(rs.getInt("Hotel_ID"));
				vo.setProvince(("PROVINCE"));
				vo.setCity(rs.getString("CITY"));
				vo.setDistrict(rs.getString("DISTRICT"));
				vo.setHotelAbout(rs.getString("Hotel_about"));
				vo.setHotelAddress(rs.getString("Hotel_address"));
				vo.setHotelName(rs.getString("Hotel_Name"));
				
				//传入酒店ID查询所有房型
				String roomtypesql = "SELECT distinct ROOMTYPE.* FROM ROOM,ROOMTYPE WHERE ROOM.ROOM_TYPE_ID=ROOMTYPE.ROOM_TYPE_ID and HOTEL_id=?";

				roomtypeconn = ConnTools.getConnecton();
				roomtypestmt = roomtypeconn.prepareStatement(roomtypesql);
				
				roomtypestmt.setInt( 1, rs.getInt("Hotel_ID"));
				
				roomtypers = roomtypestmt.executeQuery();
				//房间类型list
				List<RoomTypeVo> roomtypeList = new ArrayList<RoomTypeVo>();
				while( roomtypers.next() ){
					RoomTypeVo rtvo=new RoomTypeVo();
					rtvo.setRoomTypeid(roomtypers.getInt("room_Type_id"));
					rtvo.setRoomTypename(roomtypers.getString("room_Type_name"));
					rtvo.setRoomPrice(roomtypers.getInt("room_Price"));
					rtvo.setIntroduction(roomtypers.getString("introduction"));
					rtvo.setImageUrl(roomtypers.getString("imageUrl"));
					roomtypeList.add(rtvo);
				}

				
				//把酒店的房间类型添加到酒店vo里面
				vo.setRoomtypeList(roomtypeList);
				
				hotellist.add( vo );
				
			}
			
		}catch( SQLException e ){
			
			e.printStackTrace();
		}finally{
			ConnTools.close(roomtypeconn, roomtypestmt, roomtypers);
			ConnTools.close(conn, stmt, rs);
		}	
		System.out.println("hoteldao----roomtypeList 共"+hotellist.size()+"数据");
		return hotellist;
}
	
	//dbutil方式显示分页
	public List<RoomTypeVo> queryallRoomTypeVolList1() {
		// TODO Auto-generated method stub
		QueryRunner runner = new QueryRunner(ConnTools.getDataSource());
		List allRoomTypeList=new ArrayList();

		List hotellist=new ArrayList();
		String sql="select * from hotel";
		try {
			hotellist = runner.query(sql, new ArrayListHandler());
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		List RoomTypeList=new ArrayList();
		String sql1 = "SELECT distinct ROOM.ROOM_TYPE_ID,ROOMTYPE.ROOM_TYPE_NAME,ROOM.HOTEL_ID FROM ROOM,ROOMTYPE WHERE ROOM.ROOM_TYPE_ID=ROOMTYPE.ROOM_TYPE_ID and HOTEL_id=?";

		try {
			
			//List hlist;
			hotellist= runner.query(sql,new ArrayListHandler());
			hotellist.add(RoomTypeList);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return allRoomTypeList;
		
	}

	//查询酒店总数量
	public int queryHotelCount() {
		// TODO Auto-generated method stub
		int count = 0;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			conn=ConnTools.getConnecton();
			String sql = "select count(*) from hotel";
			stmt=conn.prepareStatement(sql);
			rs=stmt.executeQuery();
			if(rs.next()){
				count=rs.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		return count;
	}

	//搜索记录search
	public List<HotelVo> searchHotel(int curPage, int rowsPrePage,String city, String distinct){
		System.out.println("连接数据库hoteldao----searchHotel()");
		
		//获取
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		Connection roomtypeconn = null;
		PreparedStatement roomtypestmt = null;
		ResultSet roomtypers = null;
		
		//String sql = "SELECT * FROM ( SELECT ROWNUM AS rownumber, c.* FROM ( SELECT A .* FROM hotel A ORDER BY HOTEL_ID DESC ) c WHERE ROWNUM <=?) b WHERE b.rownumber >=?";
		
		String sql = "SELECT xx.* FROM(SELECT t.*,row_number() over(ORDER BY HOTEL_ID)AS num FROM hotel t)xx WHERE num BETWEEN ? AND ?";
		if(!city.equals("")){
			sql = "SELECT xx.* FROM(SELECT t.*,row_number() over(ORDER BY HOTEL_ID)AS num FROM hotel t WHERE city ='"+city+"' )xx WHERE num BETWEEN ? AND ?";
			 if(!distinct.equals("") && distinct !="0"){
					
		sql = "SELECT xx.* FROM(SELECT t.*,row_number() over(ORDER BY HOTEL_ID)AS num FROM hotel t WHERE city ='"+city+"' and district = '"+distinct+"')xx WHERE num BETWEEN ? AND ?";
			 }
		}
		Log.log(this, "Login:"+sql);
		//System.out.println("HotelDao-- searchHotel-- sql="+sql);
		//所以分店具体店型列表
		List<HotelVo> hotellist = new ArrayList<HotelVo>();
		HotelVo vo = null;
		try{
			conn = ConnTools.getConnecton();
			stmt = conn.prepareStatement(sql);
			//set parameter

			int a=(curPage-1)*rowsPrePage;
			int b= curPage*rowsPrePage;
			System.out.println("-------当前第几页curPage="+curPage);//当前第几页
			System.out.println("-------每页多少行rowsPrePage="+rowsPrePage);
			System.out.println("(curPage-1)*rowsPrePage+1="+a);
			System.out.println("curPage*rowsPrePage="+b);
			stmt.setInt( 1, (curPage-1)*rowsPrePage);//从这条开始
			stmt.setInt( 2, curPage*rowsPrePage); //到这条结束
			//stmt.setInt( 1, 0);//从这条开始
			//stmt.setInt( 2, 5); //到这条结束
			//execute
			rs = stmt.executeQuery();
			while( rs.next() ){
				
				//new
				vo = new HotelVo();
				vo.setHotelId(rs.getInt("Hotel_ID"));
				vo.setProvince(("PROVINCE"));
				vo.setCity(rs.getString("CITY"));
				vo.setDistrict(rs.getString("DISTRICT"));
				vo.setHotelAbout(rs.getString("Hotel_about"));
				vo.setHotelAddress(rs.getString("Hotel_address"));
				vo.setHotelName(rs.getString("Hotel_Name"));
				
				//传入酒店ID查询所有房型
				String roomtypesql = "SELECT distinct ROOMTYPE.* FROM ROOM,ROOMTYPE WHERE ROOM.ROOM_TYPE_ID=ROOMTYPE.ROOM_TYPE_ID and HOTEL_id=?";

				roomtypeconn = ConnTools.getConnecton();
				roomtypestmt = roomtypeconn.prepareStatement(roomtypesql);
				
				roomtypestmt.setInt( 1, rs.getInt("Hotel_ID"));
				
				roomtypers = roomtypestmt.executeQuery();
				//房间类型list
				List<RoomTypeVo> roomtypeList = new ArrayList<RoomTypeVo>();
				while( roomtypers.next() ){
					RoomTypeVo rtvo=new RoomTypeVo();
					rtvo.setRoomTypeid(roomtypers.getInt("room_Type_id"));
					rtvo.setRoomTypename(roomtypers.getString("room_Type_name"));
					rtvo.setRoomPrice(roomtypers.getInt("room_Price"));
					rtvo.setIntroduction(roomtypers.getString("introduction"));
					rtvo.setImageUrl(roomtypers.getString("imageUrl"));
					roomtypeList.add(rtvo);
				}

				
				//把酒店的房间类型添加到酒店vo里面
				vo.setRoomtypeList(roomtypeList);
				
				hotellist.add( vo );
				
			}
			
		}catch( SQLException e ){
			
			e.printStackTrace();
		}finally{
			ConnTools.close(roomtypeconn, roomtypestmt, roomtypers);
			ConnTools.close(conn, stmt, rs);
		}	
		System.out.println("hoteldao----roomtypeList 共"+hotellist.size()+"数据");
		return hotellist;
		
	}


	public int queryHotelId(String hotelName) {
		int flag = 0;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			conn=ConnTools.getConnecton();
			String sql = "select hotel_id from hotel where hotel_name=?";
			stmt=conn.prepareStatement(sql);
			stmt.setString(1, hotelName);
			rs=stmt.executeQuery();
			if(rs.next()){
				flag=rs.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			ConnTools.close(conn, stmt, rs);
		}

		
		return flag;
	}


	public int searchHotelCount(String city, String distinct) {
		// TODO Auto-generated method stub
		int count = 0;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			conn=ConnTools.getConnecton();
			String sql = "select count(*) from hotel where 1=1";
			System.out.println("city="+city+"district="+distinct);
			if(!city.equals("")){
				sql+=" and city='"+city+"'";
				
				if(!distinct.equals("")){
					
					sql+=" and district='"+distinct+"'";
				}
				
			}
			System.out.println("searchHotelCount sql="+sql);
			stmt=conn.prepareStatement(sql);
			rs=stmt.executeQuery();
			if(rs.next()){
				count=rs.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		return count;
	}
	
	public String queryHotelName(int hotelId) {
		String hotelName="";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			conn=ConnTools.getConnecton();
			String sql = "select hotel_name from hotel where hotel_id=?";
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, hotelId);
			rs=stmt.executeQuery();
			if(rs.next()){
				hotelName=rs.getString(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			ConnTools.close(conn, stmt, rs);
		}
		
		return hotelName;
	}
}
