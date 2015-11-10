package com.jsu.doIT.service.post.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Resourcetype;
import com.jsu.doIT.service.post.ResourceTypeService;

@Transactional
@Service(value = "resourceTypeService")
public class ResourceTypeServiceImpl extends DaoSupportImpl<Resourcetype> implements ResourceTypeService {

	@Override
	public void save(Resourcetype entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Resourcetype entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Resourcetype entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Resourcetype findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Resourcetype> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Resourcetype> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Resourcetype> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

}
