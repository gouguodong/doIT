package com.jsu.doIT.dao.city;

import java.util.List;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.po.City;

public interface CityDao extends DaoSupport<City> {

	/**
	 * 根据省份编号获取城市集合
	 * 
	 * @param provinceId
	 *            省份编号
	 * @return 城市集合
	 */
	List<City> findByprovinceId(Integer provinceId);

}
