package com.jsu.doIT.dao.voide.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.voide.VoideDao;
import com.jsu.doIT.po.Voide;

@Repository(value = "voideDao")
public class VoideDaoImpl extends DaoSupportImpl<Voide> implements VoideDao {

	@Override
	public Voide findByCourseId(Integer courseId, Integer sectionNumber, Integer number) {
		Voide voide = null;
		log.debug("find Voide By courseId: " + courseId + " and sectionNumber: " + sectionNumber + " and voideNumber: " + number
				+ " instance");
		try {
			String queryString = "from Voide as model where model.section.sectionId = ? and voideCode = ?";
			voide = (Voide) getSession().createQuery(queryString).setParameter(0, sectionNumber).setParameter(1, number + "")
					.uniqueResult();
		} catch (RuntimeException re) {
			log.error("find failed", re);
			throw re;
		}
		return voide;
	}

}
