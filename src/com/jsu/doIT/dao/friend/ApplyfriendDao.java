package com.jsu.doIT.dao.friend;

import java.util.List;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.po.Applyfriend;

public interface ApplyfriendDao extends DaoSupport<Applyfriend> {

	/**
	 * 根据用户标识获取好友申请集合
	 * 
	 * @param userId
	 * @return
	 */
	List<Applyfriend> findByReceiveId(Integer userId);

}
