package com.service;

import java.util.List;

import com.vo.GuestVo;
import com.vo.OrderListVo;
import com.vo.OrderViewVo;

public interface IGuestService {
	
	//登录
	public void Login(GuestVo vo);
	//注册
	public int Register(GuestVo vo);
	//修改用户信息
	public int modify(GuestVo vo);
	
	public int queryByIdCard(String idCard);
	
	//查询顾客自己的订单
	public List<OrderViewVo> showOrderList(int curPage, int rowsPrePage,String idCard);
	
	//查询顾客自己的订单数量
	public int queryOrderCount(String idCard);
}
