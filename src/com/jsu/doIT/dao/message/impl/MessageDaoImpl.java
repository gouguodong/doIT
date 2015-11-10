package com.jsu.doIT.dao.message.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.message.MessageDao;
import com.jsu.doIT.po.Message;

@Repository(value = "messageDao")
public class MessageDaoImpl extends DaoSupportImpl<Message> implements MessageDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Message> findByReceiveId(Integer userId) {
		List<Message> messages = null;
		log.debug("find Message by ReceiveId = " + userId);
		try {
			String queryString = "from Message as model where model.userByReceiveId.userId = ? or model.userBySendId.userId = ? "
					+ " order by model.sendTime desc";
			messages = getSession().createQuery(queryString).setParameter(0, userId).setParameter(1, userId).list();
			log.debug("find successful");
		} catch (RuntimeException re) {
			log.error("find failed", re);
			throw re;
		}
		return messages;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Message> findBySendId(Integer sendId, Integer receiveId, Integer pageNumber) {
		List<Message> messages = null;
		log.debug("find Message by sendId = " + sendId + " and receiveId = " + receiveId);
		try {
			String queryString = "from Message as model where (model.userBySendId.userId = ? and model.userByReceiveId.userId = ?) or"
					+ " (model.userByReceiveId.userId = ? and model.userBySendId.userId = ?) " + "order by model.sendTime desc";
			Query query = getSession().createQuery(queryString).setParameter(0, sendId).setParameter(1, receiveId)
					.setParameter(2, sendId).setParameter(3, receiveId);
			query.setFirstResult((pageNumber - 1) * 10);
			query.setMaxResults(10);
			messages = query.list();
			log.debug("find successful");
		} catch (RuntimeException re) {
			log.error("find failed", re);
			throw re;
		}
		return messages;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Message> findByReceiveNumber(Integer userId) {
		List<Message> messages = null;
		log.debug("find Message by ReceiveId = " + userId);
		try {
			String queryString = "from Message as model where model.userByReceiveId.userId = ? "
					+ "and model.status = 0 order by model.sendTime desc";
			messages = getSession().createQuery(queryString).setParameter(0, userId).list();
			log.debug("find successful");
		} catch (RuntimeException re) {
			log.error("find failed", re);
			throw re;
		}
		return messages;
	}

	@SuppressWarnings("unchecked")
	public List<Message> findBySendIdAndRec(Integer sendId, Integer receiveId) {
		List<Message> messages = null;
		log.debug("find Message by sendId = " + sendId + " and receiveId = " + receiveId);
		try {
			String queryString = "from Message as model where model.userBySendId.userId = ? and model.userByReceiveId.userId = ? and model.status = 0 "
					+ "order by model.sendTime desc";
			Query query = getSession().createQuery(queryString).setParameter(0, sendId).setParameter(1, receiveId);
			messages = query.list();
			log.debug("find successful");
		} catch (RuntimeException re) {
			log.error("find failed", re);
			throw re;
		}
		return messages;
	}

}
