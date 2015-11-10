package com.jsu.doIT.service.admin.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.admin.FilterDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Filter;
import com.jsu.doIT.service.admin.FilterService;

@Repository(value = "filterService")
public class FilterServiceImpl extends DaoSupportImpl<Filter> implements FilterService {

	@Resource
	private FilterDao dao;

	@Override
	public void save(Filter entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Filter entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Filter entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Filter findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Filter> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Filter> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Filter> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public PageBean findFilterPage(Integer currentPage, Integer pageSize, String... filterContext) {
		return dao.findFilterPage(currentPage, pageSize, filterContext);
	}

}
