package com.jsu.doIT.dao.recommend.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.recommend.RecommendDao;
import com.jsu.doIT.po.Recommend;

@Repository(value = "recommendDao")
public class RecommendDaoImpl extends DaoSupportImpl<Recommend> implements RecommendDao {

	@SuppressWarnings({ "unchecked" })
	@Override
	public Integer[] recommendByUserId(Integer userId) {
		Integer[] result = null;
		log.debug("finding recommend by userId : " + userId);
		try {
			String queryString = "from Recommend where userId = ? and status = 0 order by labelId desc";
			List<Recommend> list = getSession().createQuery(queryString).setParameter(0, userId).list();
			result =  new Integer[list.size()];
			for (int i = 0; i < list.size(); i++) {
				result[i] = list.get(i).getCourseId();
			}
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
		return result;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Recommend> findByCourseId(Integer courseId) {
		List<Recommend> list = null;
		log.debug("finding recommend by courseId : " + courseId);
		try {
			String queryString = "from Recommend where courseId = ? order by labelId desc";
			list = getSession().createQuery(queryString).setParameter(0, courseId).list();
		} catch (RuntimeException re) {
			log.error("find by courseId name failed", re);
			throw re;
		}
		return list;
	}

}
