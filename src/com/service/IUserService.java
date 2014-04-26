package com.service;

import com.vo.ResgistVo;
import com.vo.UserVo;

public interface IUserService {

	public void validateUser( UserVo vo );
	//
	public int queryUsername( String username );
	//注册
	public int Resgist(ResgistVo vo);
}
