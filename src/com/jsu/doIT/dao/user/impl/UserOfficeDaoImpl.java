package com.jsu.doIT.dao.user.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.user.UserOfficeDao;
import com.jsu.doIT.po.Useroffice;

@Repository(value = "userOfficeDao")
public class UserOfficeDaoImpl extends DaoSupportImpl<Useroffice> implements UserOfficeDao {

	@Override
	public Useroffice findByName(String officeName) {
		log.debug("finding Useroffice by officeName: " + officeName);
		Useroffice useroffice = null;
		try {
			String queryString = "from Useroffice as model where model.officeName = ?";
			useroffice = (Useroffice) getSession().createQuery(queryString).setParameter(0, officeName).uniqueResult();
		} catch (RuntimeException re) {
			log.error("find failed", re);
			throw re;
		}
		return useroffice;
	}

}
