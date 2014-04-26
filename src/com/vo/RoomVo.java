package com.vo;

public class RoomVo {
	  private int roomId;    //    Number(10),  --房间编号 主键
	  private String roomNo; //    Varchar2(20),--房间号码
	  private int roomTypeid;//      Number(3),    --房间类型编号 外键
	  private int Hotel_ID;    //Number(6),    --地区编号 外键
	  private int roomState;   // Number(1) ,    --状态
	  public RoomVo(){}
	public int getRoomId() {
		return roomId;
	}
	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	public int getRoomTypeid() {
		return roomTypeid;
	}
	public void setRoomTypeid(int roomTypeid) {
		this.roomTypeid = roomTypeid;
	}
	public int getRoomState() {
		return roomState;
	}
	public void setRoomState(int roomState) {
		this.roomState = roomState;
	}
	public int getHotel_ID() {
		return Hotel_ID;
	}
	public void setHotel_ID(int hotel_ID) {
		Hotel_ID = hotel_ID;
	}
	  
	
}
