package com.service;

import java.util.List;
import java.util.Map;

import com.vo.OrderViewVo;
import com.vo.OrderVo;

public interface IOrderService {
	
	//入住信息的可选择多条件查询
	public List<Map> queryWithOptions(Map param,int curPage,int rowsPerPage);
	
	//查询满足条件的所有数量
	public int queryCount(Map param);
	
	//插入一条订单信息
	public int insert(OrderVo vo);
	
	//前台加入一条订单信息
	public int addorder(OrderVo vo);
	
	//修改订单信息
	public int updateOrder(OrderVo vo);


}
