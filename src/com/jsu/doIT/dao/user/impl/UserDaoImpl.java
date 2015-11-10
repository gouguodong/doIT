package com.jsu.doIT.dao.user.impl;

import java.util.Date;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.user.UserDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.User;
import com.jsu.doIT.utils.PublicMethod;

@Repository(value = "userDao")
public class UserDaoImpl extends DaoSupportImpl<User> implements UserDao {

	@Override
	public User login(String userName, String userPwd) {
		User user = null;
		log.debug("login by userName/Tel/Emali: " + userName + " and userPwd: " + userPwd);
		try {
			String queryString = "from User where userPwd = ? and (userName = ? or userEmail = ? or userTel = ?)";
			user = (User) getSession().createQuery(queryString).setParameter(0, PublicMethod.md5(userPwd))
					.setParameter(1, userName).setParameter(2, userName).setParameter(3, userName).uniqueResult();
			log.debug("login successful");
		} catch (RuntimeException re) {
			log.error("login failed", re);
			throw re;
		}
		return user;
	}

	@Override
	public Boolean remoteName(String userName) {
		User user = null;
		log.debug("remote userName/Tel/Emali: " + userName + " is exist or not");
		try {
			String queryString = "from User where userName = ? or userEmail = ? or userTel = ?";
			user = (User) getSession().createQuery(queryString).setParameter(0, userName).setParameter(1, userName)
					.setParameter(2, userName).uniqueResult();
			log.debug("userName/Tel/Email exist");
		} catch (RuntimeException re) {
			log.error("userName/Tel/Email not exist", re);
			throw re;
		}
		return user != null;
	}

	@Override
	public PageBean findPage(Integer currentPage, Integer pageSize, Date begin, Date end, String userName, Integer userStatus) {
		QueryHelper queryHelper = new QueryHelper(User.class, "user");

		if (begin != null) {
			queryHelper.addCondition(" userinfo.registTime >= ? ", begin);
		}
		if (end != null) {
			queryHelper.addCondition(" userinfo.registTime <= ? ", end);
		}
		if (userName != null && userName.length() > 0) {
			queryHelper.addCondition(" userName like '%" + userName + "%' ");
		}
		if (userStatus == 1) { // 如果状态是-1 则表示查询所有
			queryHelper.addCondition(" status = ? ", userStatus);
		} else if (userStatus > 1) {
			queryHelper.addCondition(" status > ? ", userStatus);
		}
		queryHelper.addOrderProperty("userinfo.registTime", false);

		return getPageBean(currentPage, pageSize, queryHelper);
	}

	@Override
	public PageBean getTopByReplys(Integer currentPage, Integer pageSize) {
		QueryHelper queryHelper = new QueryHelper(User.class, "user");
		queryHelper.addOrderProperty(" user.userinfo.replyNumber ", false);
		return getPageBean(currentPage, pageSize, queryHelper);
	}

	@Override
	public User findByUserName(String userName) {
		User user = null;
		log.debug("find User by userName: " + userName);
		try {
			String queryString = "from User where userName = ? ";
			user = (User) getSession().createQuery(queryString).setParameter(0, userName).uniqueResult();
			log.debug("find successful");
		} catch (RuntimeException re) {
			log.error("find failed", re);
			throw re;
		}
		return user;
	}

}
