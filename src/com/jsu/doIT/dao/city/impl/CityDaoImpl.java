package com.jsu.doIT.dao.city.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.city.CityDao;
import com.jsu.doIT.po.City;

@Repository(value = "cityDao")
public class CityDaoImpl extends DaoSupportImpl<City> implements CityDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<City> findByprovinceId(Integer provinceId) {
		log.debug("finding cities by provinceId: " + provinceId);
		List<City> list = null;
		try {
			String queryString = "from City as model where model.province.provinceId = ? order by model.cityId";
			list = getSession().createQuery(queryString).setParameter(0, provinceId).list();
		} catch (RuntimeException re) {
			log.error("find failed", re);
			throw re;
		}
		return list;
	}

}
