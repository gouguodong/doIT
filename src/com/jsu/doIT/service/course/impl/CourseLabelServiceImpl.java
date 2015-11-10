package com.jsu.doIT.service.course.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Courselabel;
import com.jsu.doIT.service.course.CourseLabelService;

@Repository(value = "courseLabelService")
public class CourseLabelServiceImpl extends DaoSupportImpl<Courselabel> implements CourseLabelService {

	@Override
	public void save(Courselabel entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Courselabel entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Courselabel entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Courselabel findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Courselabel> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Courselabel> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Courselabel> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

}
