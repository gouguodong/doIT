package com.jsu.doIT.service.friend;

import java.util.List;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.po.Applyfriend;

public interface ApplyfriendService extends DaoSupport<Applyfriend> {

	/**
	 * 根据用户标识获取好友申请集合
	 * 
	 * @param userId
	 *            用户标识
	 * @return 好友申请集合
	 */
	List<Applyfriend> findByReceiveId(Integer userId);

}
