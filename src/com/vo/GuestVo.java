package com.vo;

import com.action.ActionForm;

public class GuestVo implements ActionForm{

	private  String guestId;
	private  String guestName;
	private  String guestPw;	
	private  String idCard;
	private  int guestType;
	private  String guestMobile;
	private  String guestSessionId;
	
	public String getGuestId() {
		return guestId;
	}
	public void setGuestId(String guestId) {
		this.guestId = guestId;
	}
	public String getGuestName() {
		return guestName;
	}
	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}
	public String getGuestPw() {
		return guestPw;
	}
	public void setGuestPw(String guestPw) {
		this.guestPw = guestPw;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public int getGuestType() {
		return guestType;
	}
	public void setGuestType(int guestType) {
		this.guestType = guestType;
	}
	public String getGuestMobile() {
		return guestMobile;
	}
	public void setGuestMobile(String guestMobile) {
		this.guestMobile = guestMobile;
	}
	public String getGuestSessionId() {
		return guestSessionId;
	}
	public void setGuestSessionId(String guestSessionId) {
		this.guestSessionId = guestSessionId;
	}
	
	
	
}
