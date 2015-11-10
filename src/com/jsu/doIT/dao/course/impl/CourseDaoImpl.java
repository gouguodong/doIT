package com.jsu.doIT.dao.course.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.course.CourseDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Course;

@Repository(value = "courseDao")
public class CourseDaoImpl extends DaoSupportImpl<Course> implements CourseDao {

	@Override
	public PageBean findCourseByTypeId(Integer currentPage, Integer pageSize, Integer typeId, String... level) {
		QueryHelper queryHelper = new QueryHelper(Course.class, "model");
		String sql = "coursetype.typeId = ? or coursetype.coursetype.typeId = ?";
		if (level != null && level.length > 0) {
			if (level[0] != null && level[0].length() > 0) {
				sql += " and courseLevel = '" + level[0] + "'";
			}
		}
		queryHelper.addCondition(sql, typeId, typeId);
		queryHelper.addOrderProperty("updateTime", false);
		return super.getPageBean(currentPage, pageSize, queryHelper);
	}

	@Override
	public PageBean findAllCourse(Integer currentPage, Integer pageSize, String... level) {
		QueryHelper queryHelper = new QueryHelper(Course.class, "model");
		if (level != null && level.length > 0) {
			if (level.length == 1 && level[0] != null && level[0].length() > 0) {
				queryHelper.addCondition("courseLevel = ?", level[0]);				
			}
			else if (level.length == 2 && level[1] != null && level[1].length() > 0) {
				queryHelper.addCondition("courseName like '%" + level[1] + "%'");				
			}
		}
		queryHelper.addOrderProperty("updateTime", false);
		return super.getPageBean(currentPage, pageSize, queryHelper);
	}

	@Override
	public PageBean getHotCourses(Integer currentPage, Integer pageSize, String... level) {
		QueryHelper queryHelper = new QueryHelper(Course.class, "model");
		if (level != null && level.length > 0) {
			if (level[0] != null && level[0].length() > 0) {
				queryHelper.addCondition("courseLevel = ?", level[0]);
			}
		}
		queryHelper.addOrderProperty("studyNumber", false);
		return super.getPageBean(currentPage, pageSize, queryHelper);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Course> findCourseByTeacherId(Integer teacherId, String... level) {
		log.debug("finding all teacher's courses by teacherId: " + teacherId);
		List<Course> list = null;
		try {
			String queryString = "from Course as model where model.teacher.teacherId = ? order by model.courseId";
			if (level != null && level.length > 0) {
				if (level[0] != null && level[0].length() > 0) {
					queryString += "from Course as model where model.teacher.teacherId = ?  and courseLevel = '" + level[0]
							+ "' order by model.courseId";
				}
			}
			list = getSession().createQuery(queryString).setParameter(0, teacherId).list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
		return list;
	}

}
