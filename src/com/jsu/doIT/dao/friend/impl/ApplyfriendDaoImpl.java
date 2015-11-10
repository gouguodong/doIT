package com.jsu.doIT.dao.friend.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.friend.ApplyfriendDao;
import com.jsu.doIT.po.Applyfriend;

@Repository(value = "applyfriendDao")
public class ApplyfriendDaoImpl extends DaoSupportImpl<Applyfriend> implements ApplyfriendDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Applyfriend> findByReceiveId(Integer userId) {
		List<Applyfriend> applyfriends = null;
		log.debug("find Applyfriend by ReceiveId = " + userId);
		try {
			String queryString = "from Applyfriend as model where model.userByRecUserId.userId = ? "
					+ "and model.status = 0 order by model.replayTime desc";
			applyfriends = getSession().createQuery(queryString).setParameter(0, userId).list();
			log.debug("find successful");
		} catch (RuntimeException re) {
			log.error("find failed", re);
			throw re;
		}
		return applyfriends;
	}

}
