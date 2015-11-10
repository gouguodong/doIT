package com.jsu.doIT.dao.feedback.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.feedback.FeedBackDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Feedback;

@Repository(value = "feedBackDao")
public class FeedBackDaoImpl extends DaoSupportImpl<Feedback> implements FeedBackDao {

	@Override
	public PageBean findPage(Integer currentPage, Integer pageSize, String... userName) {
		QueryHelper queryHelper = new QueryHelper(Feedback.class, "feedback");
		if (userName != null && userName.length > 0 && userName[0] != null && userName[0].length() > 0) {
			queryHelper.addCondition(" user.userName like '%" + userName[0] + "%' ");
		}
		queryHelper.addOrderProperty("feedTime", false);
		return getPageBean(currentPage, pageSize, queryHelper);
	}

}
