package com.jsu.doIT.dao.course.impl;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.course.CourseTypeDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Coursetype;

@Repository(value = "courseTypeDao")
public class CourseTypeDaoImpl extends DaoSupportImpl<Coursetype> implements CourseTypeDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Coursetype> findFatherType() {
		List<Coursetype> coursetypes = null;
		log.debug("finding all father type instances");
		try {
			String queryString = "from Coursetype as model where model.coursetype.typeId is null order by model.typeId";
			coursetypes = getSession().createQuery(queryString).list();
		} catch (RuntimeException re) {
			log.error("find all father type failed", re);
			throw re;
		}
		return coursetypes;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Set<Coursetype> findChlidByFatherId(Integer typeId) {
		Set<Coursetype> coursetypes = new LinkedHashSet<Coursetype>();
		log.debug("finding all father type instances");
		try {
			String queryString = "from Coursetype as model where model.coursetype.typeId = ? order by model.typeId";
			coursetypes.addAll(getSession().createQuery(queryString).setParameter(0, typeId).list());
		} catch (RuntimeException re) {
			log.error("find all father type failed", re);
			throw re;
		}
		return coursetypes;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Coursetype> findAllChildType() {
		List<Coursetype> coursetypes = null;
		log.debug("finding all child type instances");
		try {
			String queryString = "from Coursetype as model where model.coursetype.typeId is not null order by model.typeId";
			coursetypes = getSession().createQuery(queryString).list();
		} catch (RuntimeException re) {
			log.error("find all father type failed", re);
			throw re;
		}
		return coursetypes;
	}

	@Override
	public PageBean findChildTypePage(Integer currentPage, Integer pageSize, Integer... coursetypeId) {
		QueryHelper queryHelper = new QueryHelper(Coursetype.class, "model");
		if (coursetypeId != null && coursetypeId.length > 0 && coursetypeId[0] != null) {
			queryHelper.addCondition(" coursetype.typeId = ? ", coursetypeId[0]);
		}
		queryHelper.addOrderProperty("typeId", false);
		return getPageBean(currentPage, pageSize, queryHelper);
	}

	@Override
	public Coursetype findByTypeName(String typeName) {
		Coursetype coursetype = null;
		log.debug("finding CourseType by typeName: " + typeName);
		try {
			String queryString = "from Coursetype as model where model.typeName = ?";
			coursetype = (Coursetype) getSession().createQuery(queryString).setParameter(0, typeName).uniqueResult();
		} catch (RuntimeException re) {
			log.error("finding CourseType failed", re);
			throw re;
		}
		return coursetype;
	}

}
