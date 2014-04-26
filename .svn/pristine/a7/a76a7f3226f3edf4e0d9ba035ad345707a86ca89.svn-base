package com.commons;

public interface Constants {
	
	//显示所以分店列表
	public String query_hotel_list="select * from Hotel";
	
	//显示所以分店房型列表
	public String query_roomtype_list="select * from RoomType where  ";
		
	//分页查看留言信息
	public String QUERY_MSG_INFO ="select * from ( "
				   +" select rownum as rownumber,c.* from( "
				   +" select a.* from message a "
				   +" order by  Msg_Data desc)c where rownum <=?)b where  b.rownumber >=?";
	//查询留言总记录数
	public String QUERY_MSG_COUNT = "select count(*) from message";
	//添加留言
	public String ADD_MSG_INFO ="insert into message values(seq_msgid.nextval,?,?,sysdate,seq_GuestId.nextval)";
	//删除留言
	public String DEL_MSG_INFO =" delete  from message where msg_id = ?";
	//验证帐号和密码
	public String VALIDATE_GUEST_INFO ="select * from Guest where Guest_Name=? and Guest_PW=?";
	//用户注册
	public String ADD_GUEST_INFO ="insert into Guest values(seq_GuestId.nextval,?,?,?,?,?,null);";
	//修改用户信息
	public String MODIFY_GUEST_INFO = "update  guest set Guest_Pw=? where Guest_Name=?";

	public int ROOM_RESERVED =1;  //房间状态为已预订
	public String DEFAULT_SELECT_TEXT="请选择";   //默认情况下的下拉列表内容
	public int Order_CheckedIn=2;   //订单状态为已入住
	public int Order_CheckedOut=3;    //订单状态为已付款退房
	
	//分页查询订单
	public String QUERY_ORDER_INFO ="select order_id,hotel_name,Room_Type_name，cost,check_in,check_out,state from ( "
			   +" select rownum as rownumber,c.* from( "
			   +" select a.* from order_view a "
			   +" order by  Order_ID desc)c where rownum <=?)b where  b.rownumber >=?";
	//查询留言总记录数
	public String QUERY_ORDER_COUNT = "select count(*) from order_view where id_card=?";

}
