package com.jsu.doIT.service.post.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Posttype;
import com.jsu.doIT.service.post.PostTypeService;

@Transactional
@Service(value = "postTypeService")
public class PostTypeServiceImpl extends DaoSupportImpl<Posttype> implements PostTypeService {

	@Override
	public void save(Posttype entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Posttype entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Posttype entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Posttype findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Posttype> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Posttype> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Posttype> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

}
