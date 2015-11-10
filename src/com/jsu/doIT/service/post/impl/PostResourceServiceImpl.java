package com.jsu.doIT.service.post.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Postresource;
import com.jsu.doIT.service.post.PostResourceService;

@Transactional
@Service(value = "postResourceService")
public class PostResourceServiceImpl extends DaoSupportImpl<Postresource> implements PostResourceService {

	@Override
	public void save(Postresource entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Postresource entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Postresource entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Postresource findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Postresource> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Postresource> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Postresource> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

}
