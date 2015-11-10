package com.jsu.doIT.service.voide.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Voideresource;
import com.jsu.doIT.service.voide.VoideResourceService;

@Transactional
@Service(value = "voideResourceService")
public class VoideResourceServiceImpl extends DaoSupportImpl<Voideresource> implements VoideResourceService {

	@Override
	public void save(Voideresource entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Voideresource entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Voideresource entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Voideresource findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Voideresource> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Voideresource> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Voideresource> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

}
