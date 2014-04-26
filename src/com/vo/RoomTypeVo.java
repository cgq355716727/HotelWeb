package com.vo;

import com.action.ActionForm;

public class RoomTypeVo implements ActionForm{
	  private int roomTypeid; //   number(3),--房间类型编号   主键
	  private String roomTypename; // Varchar2(15),--房间类型名    
	  private int roomPrice;  //number(10),--房间价格    
	  private String introduction;//  Varchar2(1000)，--简介    
	  private String imageUrl;  //Varchar2(1000) ,--图片    图片URL用,号分开
	  
	  public RoomTypeVo(){}
	public int getRoomTypeid() {
		return roomTypeid;
	}
	public void setRoomTypeid(int roomTypeid) {
		this.roomTypeid = roomTypeid;
	}
	public String getRoomTypename() {
		return roomTypename;
	}
	public void setRoomTypename(String roomTypename) {
		this.roomTypename = roomTypename;
	}
	public int getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(int roomPrice) {
		this.roomPrice = roomPrice;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	  
	  
	  
}
