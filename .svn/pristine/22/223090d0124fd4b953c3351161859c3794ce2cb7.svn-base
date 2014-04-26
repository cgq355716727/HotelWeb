package com.service.impl;

import com.dao.IAdminDao;
import com.dao.impl.AdminDao;
import com.service.IAdminService;
import com.vo.AdminVo;

public class AdminService implements IAdminService {
	
	private IAdminDao adminDao;
	
	public AdminService(){
		adminDao=new AdminDao();
	}

	public AdminVo validateAdmin(AdminVo vo) {
		// TODO Auto-generated method stub
		return adminDao.validateAdmin(vo);
	}

	public int addAdmin(AdminVo vo) {
		// TODO Auto-generated method stub
		return adminDao.addAdmin(vo);
	}

	public int updPassword(AdminVo vo) {
		// TODO Auto-generated method stub
		return adminDao.updPassword(vo);
	}

	public int delAdmin(int adminId) {
		// TODO Auto-generated method stub
		return adminDao.delAdmin(adminId);
	}

}
