package com.service.impl;

import com.dao.IUserDao;
import com.dao.impl.UserDao;
import com.service.IUserService;
import com.vo.ResgistVo;
import com.vo.UserVo;


public class UserService implements IUserService{

	private IUserDao userDao;
	public UserService(){
		
		userDao = new UserDao();
	}
	
	public void validateUser(UserVo vo) {
		// TODO Auto-generated method stub
		userDao.validateUser(vo);
	}

	public int queryUsername(String username) {
		// TODO Auto-generated method stub
		return userDao.queryUsername(username);
	}

	public int Resgist(ResgistVo vo) {
		// TODO Auto-generated method stub
		return userDao.Resgist(vo);
	}
}
