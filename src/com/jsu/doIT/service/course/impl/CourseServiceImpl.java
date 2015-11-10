package com.jsu.doIT.service.course.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.course.CourseDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Course;
import com.jsu.doIT.service.course.CourseService;

@Repository(value = "courseService")
public class CourseServiceImpl extends DaoSupportImpl<Course> implements CourseService {

	@Resource
	private CourseDao dao;

	@Override
	public void save(Course entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Course entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Course entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Course findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Course> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Course> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Course> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public PageBean findAllCourse(Integer currentPage, Integer pageSize, String... level) {
		// TODO Auto-generated method stub
		return dao.findAllCourse(currentPage, pageSize, level);
	}

	@Override
	public PageBean findCourseByTypeId(Integer currentPage, Integer pageSize, Integer typeId, String... level) {
		// TODO Auto-generated method stub
		return dao.findCourseByTypeId(currentPage, pageSize, typeId, level);
	}

	@Override
	public PageBean getHotCourses(Integer currentPage, Integer pageSize, String... level) {
		// TODO Auto-generated method stub
		return dao.getHotCourses(currentPage, pageSize, level);
	}

	@Override
	public List<Course> findCourseByTeacherId(Integer teacherId) {
		return dao.findCourseByTeacherId(teacherId);
	}

}
