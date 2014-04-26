package com.vo;

import java.util.ArrayList;
import java.util.List;

public class HotelVo {
	  private int hotelId;		//  Number(6),  --分店宾馆编号主键
	  private String province;  //  Varchar2(20),    --省    
	  private String city;      //  Varchar2(20),    --市    
	  private String district;  //  Varchar2(20),    --区（县）    
	  private String hotelName;  //Varchar2(50),    --分店宾馆名称
	  private String hotelAddress; // Varchar2(50) ,   --分店宾馆地址 
	  private String hotelAbout; //Varchar2(500) ,--分店简介
	  private List<RoomTypeVo> roomtypeList=new ArrayList<RoomTypeVo>();
	  public HotelVo(){}
	public int getHotelId() {
		return hotelId;
	}
	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getHotelAddress() {
		return hotelAddress;
	}
	public void setHotelAddress(String hotelAddress) {
		this.hotelAddress = hotelAddress;
	}
	public String getHotelAbout() {
		return hotelAbout;
	}
	public void setHotelAbout(String hotelAbout) {
		this.hotelAbout = hotelAbout;
	}
	public List<RoomTypeVo> getRoomtypeList() {
		return roomtypeList;
	}
	public void setRoomtypeList(List<RoomTypeVo> roomtypeList) {
		this.roomtypeList = roomtypeList;
	} 

	  
}
