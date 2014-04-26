package com.service.impl;

import java.util.List;

import com.dao.IGuestDao;
import com.dao.impl.GuestDao;
import com.service.IGuestService;
import com.vo.GuestVo;
import com.vo.OrderListVo;
import com.vo.OrderViewVo;

public class GuestService implements IGuestService{

	private IGuestDao guestDao;
	public GuestService(){
		guestDao = new GuestDao();
	}
	public void Login(GuestVo vo) {
		 guestDao.Login(vo);
		
	}

	public int Register(GuestVo vo) {
		// TODO Auto-generated method stub
		return guestDao.Register(vo);
	}
	public int modify(GuestVo vo) {
		// TODO Auto-generated method stub
		return guestDao.modify(vo);
	}
	public int queryByIdCard(String idCard) {
		// TODO Auto-generated method stub
		return guestDao.queryByIdCard(idCard);
	}
	public List<OrderViewVo> showOrderList(int curPage, int rowsPrePage,
			String idCard) {
		// TODO Auto-generated method stub
		return guestDao.showOrderList(curPage,rowsPrePage,idCard);
	}
	public int queryOrderCount(String idCard) {
		// TODO Auto-generated method stub
		return guestDao.queryOrderCount(idCard);
	}

}
