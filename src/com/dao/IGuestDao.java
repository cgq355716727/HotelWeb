package com.dao;

import java.util.List;

import com.vo.GuestVo;
import com.vo.OrderListVo;
import com.vo.OrderViewVo;

public interface IGuestDao {
	
	//登录
	public void Login(GuestVo vo);
	//注册
	public int Register(GuestVo vo);
	
	public int modify(GuestVo vo);
	
	public int queryByIdCard(String idCard);
	
	public List<OrderViewVo> showOrderList(int curPage, int rowsPrePage,String idCard);
	public int queryOrderCount(String idCard);
}
