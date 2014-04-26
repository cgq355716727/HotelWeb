package com.vo;

import java.util.Date;

public class OrderListVo {
	
	
	private int order_id;
	private String hotel_name;
	private String Room_Type_name;
	private int room_no;
	private String guest_name;
	private String id_card;
	private Date check_in;
	private Date check_out;
	private int deposit;
	private int cost;
	private int state;
	
	
	public int getOrder_id() {
		return order_id;
	}
	
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	
	public String getHotel_name() {
		return hotel_name;
	}
	
	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}
	
	public String getRoom_Type_name() {
		return Room_Type_name;
	}
	
	public void setRoom_Type_name(String room_Type_name) {
		Room_Type_name = room_Type_name;
	}
	
	public int getRoom_no() {
		return room_no;
	}
	
	public void setRoom_no(int room_no) {
		this.room_no = room_no;
	}
	
	public String getGuest_name() {
		return guest_name;
	}
	
	public void setGuest_name(String guest_name) {
		this.guest_name = guest_name;
	}
	
	public String getId_card() {
		return id_card;
	}
	
	public void setId_card(String id_card) {
		this.id_card = id_card;
	}
	
	public Date getCheck_in() {
		return check_in;
	}
	
	public void setCheck_in(Date check_in) {
		this.check_in = check_in;
	}
	
	public Date getCheck_out() {
		return check_out;
	}
	
	public void setCheck_out(Date check_out) {
		this.check_out = check_out;
	}
	
	public int getDeposit() {
		return deposit;
	}
	
	public void setDeposit(int deposit) {
		this.deposit = deposit;
	}
	
	public int getCost() {
		return cost;
	}
	
	public void setCost(int cost) {
		this.cost = cost;
	}
	
	public int getState() {
		return state;
	}
	
	public void setState(int state) {
		this.state = state;
	}
	
	
	
	
	

}
