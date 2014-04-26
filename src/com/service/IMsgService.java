package com.service;

import java.util.List;

import com.vo.MsgVo;

public interface IMsgService {

	//查询
	public List<MsgVo> showMsgInfo(int curPage,int rowsPrePage);
	//查询总留言数
	public int queryMsgCount();
	//添加留言
	public int saveMsg(MsgVo vo);
	//删除留言
	public int delMsg(int msg_id);
}
