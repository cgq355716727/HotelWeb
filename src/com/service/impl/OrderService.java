package com.service.impl;

import java.util.List;
import java.util.Map;

import com.dao.IOrderDao;
import com.dao.impl.OrderDao;
import com.service.IOrderService;
import com.vo.OrderViewVo;
import com.vo.OrderVo;

public class OrderService implements IOrderService {
	
	private IOrderDao orderDao;
	
	public OrderService(){
		
		orderDao=new OrderDao();
	}

	public List<Map> queryWithOptions(Map param, int curPage, int rowsPerPage) {
		// TODO Auto-generated method stub
		return orderDao.queryWithOptions(param, curPage, rowsPerPage);
	}

	public int queryCount(Map param) {
		// TODO Auto-generated method stub
		return orderDao.queryCount(param);
	}

	public int insert(OrderVo vo) {
		// TODO Auto-generated method stub
		return orderDao.insert(vo);
	}
	
	public int addorder(OrderVo vo){
		return orderDao.addorder(vo);
	}

	public int updateOrder(OrderVo vo) {
		// TODO Auto-generated method stub
		return orderDao.updateOrder(vo);
	}



}
