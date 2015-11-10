package com.jsu.doIT.service.course.impl;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.course.CourseTypeDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Coursetype;
import com.jsu.doIT.service.course.CourseTypeService;

@Transactional
@Service(value = "courseTypeService")
public class CourseTypeServiceImpl extends DaoSupportImpl<Coursetype> implements CourseTypeService {

	@Resource
	private CourseTypeDao courseTypeDao;
	
	@Override
	public void save(Coursetype entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Coursetype entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Coursetype entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Coursetype findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Coursetype> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Coursetype> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Coursetype> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public List<Coursetype> findFatherType() {
		return courseTypeDao.findFatherType();
	}

	@Override
	public Set<Coursetype> findChlidByFatherId(Integer typeId) {
		// TODO Auto-generated method stub
		return courseTypeDao.findChlidByFatherId(typeId);
	}

	@Override
	public List<Coursetype> findAllChildType() {
		// TODO Auto-generated method stub
		return courseTypeDao.findAllChildType();
	}

	@Override
	public PageBean findChildTypePage(Integer currentPage, Integer pageSize, Integer... coursetypeId) {
		return courseTypeDao.findChildTypePage(currentPage, pageSize, coursetypeId);
	}

	@Override
	public Coursetype findByTypeName(String typeName) {
		return courseTypeDao.findByTypeName(typeName);
	}

}
