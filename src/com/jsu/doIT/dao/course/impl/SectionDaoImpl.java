package com.jsu.doIT.dao.course.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.course.SectionDao;
import com.jsu.doIT.po.Section;

@Repository(value = "sectionDao")
public class SectionDaoImpl extends DaoSupportImpl<Section> implements SectionDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Section> findByCourseId(Integer courseId) {
		log.debug("finding all course's sections by courseId: " + courseId);
		List<Section> list = null;
		try {
			String queryString = "from Section as model where model.course.courseId = ? order by model.sectionId";
			list = getSession().createQuery(queryString).setParameter(0, courseId).list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
		return list;
	}

	@Override
	public Section findByCourseIdAndSectoinCode(Integer courseId, Integer sectionCode) {
		log.debug("finding section by courseId: " + courseId + " and sectionCode: " + sectionCode);
		Section section = null;
		try {
			String queryString = "from Section as model where model.course.courseId = ? and sectionCode = ?";
			section = (Section) getSession().createQuery(queryString).setParameter(0, courseId).setParameter(1, sectionCode)
					.uniqueResult();
		} catch (RuntimeException re) {
			log.error("find failed", re);
			throw re;
		}
		return section;
	}

}
