package com.jsu.doIT.service.friend;

import java.util.List;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.po.Userrelation;

public interface UserRelationService extends DaoSupport<Userrelation> {

	/**
	 * 根据用户标识查询用户的好友列表
	 * 
	 * @param userId
	 *            用户标识
	 * @return 好友集合
	 */
	List<Userrelation> findbyUserId(Integer userId);

	/**
	 * 根据用户标识以及好友标识获取好友关系
	 * 
	 * @param userId
	 *            用户标识
	 * @param friendId
	 *            好友标识
	 * @return 好友关系
	 */
	Userrelation findbyUserIdAndFriendId(Integer userId, Integer friendId);

}
