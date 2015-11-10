package com.jsu.doIT.dao.admin.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.admin.AdminDao;
import com.jsu.doIT.po.Admin;
import com.jsu.doIT.utils.PublicMethod;

@Repository(value = "adminDao")
public class AdminDaoImpl extends DaoSupportImpl<Admin> implements AdminDao {

	@Override
	public Admin login(String adminName, String adminPwd) {
		Admin admin = null;
		log.debug("login by adminName: " + adminName + " and adminPwd: " + adminPwd);
		try {
			String queryString = "from Admin as model where adminPwd = ? and adminName = ?";
			admin = (Admin) getSession().createQuery(queryString).setParameter(0, PublicMethod.md5(adminPwd))
					.setParameter(1, adminName).uniqueResult();
			log.debug("login successful");
		} catch (RuntimeException re) {
			log.error("login failed", re);
			throw re;
		}
		return admin;
	}
}
