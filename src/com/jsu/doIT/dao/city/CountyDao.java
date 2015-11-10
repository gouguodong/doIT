package com.jsu.doIT.dao.city;

import java.util.List;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.po.County;

public interface CountyDao extends DaoSupport<County> {

	/**
	 * 根据城市编号获取区县集合
	 * 
	 * @param cityId
	 *            城市编号
	 * @return 区县集合
	 */
	List<County> findByCityId(Integer cityId);

	/**
	 * 根据区县名获取区县实体
	 * 
	 * @param countyName
	 * @return
	 */
	County findByName(String countyName);

}