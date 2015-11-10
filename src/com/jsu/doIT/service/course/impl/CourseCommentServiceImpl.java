package com.jsu.doIT.service.course.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Coursecomment;
import com.jsu.doIT.service.course.CourseCommentService;

@Repository(value = "courseCommentService")
public class CourseCommentServiceImpl extends DaoSupportImpl<Coursecomment> implements CourseCommentService {

	@Override
	public void save(Coursecomment entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Coursecomment entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Coursecomment entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Coursecomment findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Coursecomment> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Coursecomment> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Coursecomment> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

}
