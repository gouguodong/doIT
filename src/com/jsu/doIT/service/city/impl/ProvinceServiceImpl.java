package com.jsu.doIT.service.city.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Province;
import com.jsu.doIT.service.city.ProvinceService;

@Repository(value = "provinceService")
public class ProvinceServiceImpl extends DaoSupportImpl<Province> implements ProvinceService {

	@Override
	public void save(Province entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Province entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Province entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Province findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Province> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Province> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Province> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

}
