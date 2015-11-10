package com.jsu.doIT.dao.post.impl;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.post.UserPostDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Postlabel;
import com.jsu.doIT.po.Userpost;

@Repository(value = "userPostDao")
public class UserPostDaoImpl extends DaoSupportImpl<Userpost> implements UserPostDao {

	@Override
	public PageBean findQuePost(Integer currentPage, Integer PageSize, Integer typeId, Integer userId) {
		QueryHelper queryHelper = new QueryHelper(Userpost.class, "model");
		String sql = "typeId=? and userId=?";
		queryHelper.addCondition(sql, typeId, userId);
		queryHelper.addOrderProperty("postTime", false);
		return super.getPageBean(currentPage, PageSize, queryHelper);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Userpost> findByTitle(String title, Integer size) {
		return getSession().createQuery("from Userpost p where p.postTitle like :title").setString("title", title)
				.setMaxResults(size).list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Userpost> getTops(Integer size) {
		return getSession().createQuery("from Userpost p order by p.replyNumber desc").setMaxResults(size).list();
	}

	public PageBean findPage(Integer currentPage, Integer pageSize, Map<String, Object> filterMap, Map<String, Boolean> orderMap) {
		QueryHelper helper = new QueryHelper(Userpost.class, "p");
		if (filterMap != null && filterMap.size() > 0) {
			for (String key : filterMap.keySet()) {
				helper.addCondition(key, filterMap.get(key));
			}
		}
		if (orderMap != null && orderMap.size() > 0) {
			for (String key : orderMap.keySet()) {
				helper.addOrderProperty(key, orderMap.get(key));
			}
		}
		return getPageBean(currentPage, pageSize, helper);
	}

	/**
	 * status == 0 表示未阅读
	 */
	@Override
	public int getQuestionNum(Integer userId) {
		return ((BigInteger) getSession()
				.createSQLQuery(
						"select count(*) from reply r where r.postId in ( select p.postId from userpost p where p.userId = ? ) and r.`status` = 0 and r.fatherId is NULL;")
				.setParameter(0, userId).uniqueResult()).intValue();
	}

	@Override
	public int getReplyNum(Integer userId) {
		return ((BigInteger) getSession().createSQLQuery("select count(*) from reply r where r.fatherId = ? and r.status = 0")
				.setParameter(0, userId).uniqueResult()).intValue();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Userpost> findByType(Postlabel type, int size) {
		return getSession().createQuery("from Userpost p where p.postlabel = ?").setParameter(0, type).setMaxResults(size).list();
	}

}
