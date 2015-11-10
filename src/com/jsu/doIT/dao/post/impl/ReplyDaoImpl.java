package com.jsu.doIT.dao.post.impl;

import java.math.BigInteger;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.post.ReplyDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Reply;
import com.jsu.doIT.po.User;

@Repository(value = "replyDao")
public class ReplyDaoImpl extends DaoSupportImpl<Reply> implements ReplyDao {
	@Override
	public PageBean findMyReply(Integer currentPage, Integer PageSize, Integer userId) {
		QueryHelper queryHelper = new QueryHelper(Reply.class, "model");
		String sql = "userId=?";
		queryHelper.addCondition(sql, userId);
		queryHelper.addOrderProperty("replyTime", false);
		return super.getPageBean(currentPage, PageSize, queryHelper);
	}

	@Override
	public int getAdoptNum(User u) {
		// TODO Auto-generated method stub
		return ((BigInteger) getSession()
				.createSQLQuery("select count(*) from reply r where r.userId = ? and r.fatherId is NULL and r.status = 2")
				.setParameter(0, u.getUserId()).uniqueResult()).intValue();
	}

}
