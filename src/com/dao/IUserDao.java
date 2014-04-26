package com.dao;

import com.vo.ResgistVo;
import com.vo.UserVo;

/**
 * title:用户处理
 * @author Administrator
 *
 */
public interface IUserDao {

	public void validateUser( UserVo vo );
	
	//
	public int queryUsername( String username );
	//注册
	public int Resgist(ResgistVo vo);
}
