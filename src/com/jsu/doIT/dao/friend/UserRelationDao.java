package com.jsu.doIT.dao.friend;

import java.util.List;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.po.Userrelation;

public interface UserRelationDao extends DaoSupport<Userrelation> {

	/**
	 * 根据用户标识查询用户的好友列表
	 * 
	 * @param userId
	 * @return
	 */
	List<Userrelation> findbyUserId(Integer userId);

	/**
	 * 根据用户标识以及好友标识获取好友关系
	 * 
	 * @param userId
	 * @param friendId
	 * @return
	 */
	Userrelation findbyUserIdAndFriendId(Integer userId, Integer friendId);

}
