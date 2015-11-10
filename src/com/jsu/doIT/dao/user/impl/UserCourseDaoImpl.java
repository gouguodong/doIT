package com.jsu.doIT.dao.user.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.user.UserCourseDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Usercourse;

@Repository(value = "userCourseDao")
public class UserCourseDaoImpl extends DaoSupportImpl<Usercourse> implements UserCourseDao {

	@Override
	public PageBean findAttentionCourse(Integer currentPage, Integer pageSize, Integer typeId, Integer userId) {
		QueryHelper queryHelper = new QueryHelper(Usercourse.class, "model");
		String sql = "typeId=? and userId=?";
		queryHelper.addCondition(sql, typeId, userId);
		queryHelper.addOrderProperty("relationId", false);
		return super.getPageBean(currentPage, pageSize, queryHelper);
	}

	@Override
	public Usercourse findByUserIdAndCourseId(Integer userId, Integer courseId) {
		log.debug("finding Usercourse by userId: " + userId + " and courseId: " + courseId);
		Usercourse usercourse = null;
		try {
			String queryString = "from Usercourse as model where model.user.userId = ? and model.course.courseId = ? ";
			usercourse = (Usercourse) getSession().createQuery(queryString).setParameter(0, userId).setParameter(1, courseId)
					.uniqueResult();
		} catch (RuntimeException re) {
			log.error("find failed", re);
			throw re;
		}
		return usercourse;
	}

}
