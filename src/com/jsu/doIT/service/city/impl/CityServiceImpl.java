package com.jsu.doIT.service.city.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.city.CityDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.City;
import com.jsu.doIT.service.city.CityService;

@Repository(value = "cityService")
public class CityServiceImpl extends DaoSupportImpl<City> implements CityService {

	@Resource
	private CityDao dao;

	@Override
	public void save(City entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(City entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(City entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public City findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<City> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<City> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<City> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public List<City> findByprovinceId(Integer provinceId) {
		return dao.findByprovinceId(provinceId);
	}

}
