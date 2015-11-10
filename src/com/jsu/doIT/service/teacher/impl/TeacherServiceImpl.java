package com.jsu.doIT.service.teacher.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Teacher;
import com.jsu.doIT.service.teacher.TeacherService;

@Transactional
@Service(value = "teacherService")
public class TeacherServiceImpl extends DaoSupportImpl<Teacher> implements TeacherService {

	@Override
	public void save(Teacher entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Teacher entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Teacher entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Teacher findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Teacher> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Teacher> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Teacher> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

}
