package com.jsu.doIT.service.admin.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.admin.HeadDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Head;
import com.jsu.doIT.service.admin.HeadService;

@Repository(value = "headService")
public class HeadServiceImpl extends DaoSupportImpl<Head> implements HeadService {

	@Resource
	private HeadDao dao;
	
	@Override
	public void save(Head entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Head entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Head entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Head findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Head> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Head> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Head> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public PageBean findPage(Integer currentPage, Integer pageSize) {
		return dao.findPage(currentPage, pageSize);
	}
	
	

}
