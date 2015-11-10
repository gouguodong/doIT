package com.jsu.doIT.dao.friend.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.friend.UserRelationDao;
import com.jsu.doIT.po.Userrelation;

@Repository(value = "userRelationDao")
public class UserRelationDaoImpl extends DaoSupportImpl<Userrelation> implements UserRelationDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Userrelation> findbyUserId(Integer userId) {
		log.debug("finding Userrelation instance by userByUserIdA.userId " + userId);
		try {
			String queryString = "from Userrelation as model where model.userByUserIdA.userId= ? order by model.relationTime";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, userId);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find failed", re);
			throw re;
		}
	}

	@Override
	public Userrelation findbyUserIdAndFriendId(Integer userId, Integer friendId) {
		log.debug("finding Userrelation instance by userByUserIdA.userId " + userId);
		try {
			String queryString = "from Userrelation as model where model.userByUserIdA.userId= ? and model.userByUserIdB.userId = ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, userId).setParameter(1, friendId);
			return (Userrelation) queryObject.uniqueResult();
		} catch (RuntimeException re) {
			log.error("find failed", re);
			throw re;
		}
	}

}
