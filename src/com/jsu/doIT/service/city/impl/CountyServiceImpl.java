package com.jsu.doIT.service.city.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.city.CountyDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.County;
import com.jsu.doIT.service.city.CountyService;

@Repository(value = "countyService")
public class CountyServiceImpl extends DaoSupportImpl<County> implements CountyService {

	@Resource
	private CountyDao dao;

	@Override
	public void save(County entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(County entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(County entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public County findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<County> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<County> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<County> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public List<County> findByCityId(Integer cityId) {
		return dao.findByCityId(cityId);
	}

	@Override
	public County findByName(String countyName) {
		return dao.findByName(countyName);
	}

}
