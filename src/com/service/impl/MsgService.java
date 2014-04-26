package com.service.impl;

import java.util.List;

import com.dao.IMsgDao;
import com.dao.impl.MsgDao;
import com.service.IMsgService;
import com.vo.MsgVo;

public class MsgService implements IMsgService{
	
	private IMsgDao msgDao;
	public MsgService(){
		
		msgDao = new MsgDao();
	}
	public List<MsgVo> showMsgInfo(int curPage, int rowsPrePage) {
		// TODO Auto-generated method stub
		return msgDao.showMsgInfo(curPage, rowsPrePage);
	}

	public int queryMsgCount() {
		// TODO Auto-generated method stub
		return msgDao.queryMsgCount();
	}

	public int saveMsg(MsgVo vo) {
		// TODO Auto-generated method stub
		return msgDao.saveMsg(vo);
	}
	public int delMsg(int msg_id) {
		// TODO Auto-generated method stub
		return msgDao.delMsg(msg_id);
	}

}
