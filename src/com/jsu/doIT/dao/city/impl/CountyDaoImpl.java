package com.jsu.doIT.dao.city.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.city.CountyDao;
import com.jsu.doIT.po.County;

@Repository(value = "countyDao")
public class CountyDaoImpl extends DaoSupportImpl<County> implements CountyDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<County> findByCityId(Integer cityId) {
		log.debug("finding counties by cityId: " + cityId);
		List<County> list = null;
		try {
			String queryString = "from County as model where model.city.cityId = ? order by model.countyId";
			list = getSession().createQuery(queryString).setParameter(0, cityId).list();
		} catch (RuntimeException re) {
			log.error("find failed", re);
			throw re;
		}
		return list;
	}

	@Override
	public County findByName(String countyName) {
		log.debug("finding County by countyName: " + countyName);
		County county = null;
		try {
			String queryString = "from County as model where model.countyName = ?";
			county = (County) getSession().createQuery(queryString).setParameter(0, countyName).uniqueResult();
		} catch (RuntimeException re) {
			log.error("find failed", re);
			throw re;
		}
		return county;
	}

}
