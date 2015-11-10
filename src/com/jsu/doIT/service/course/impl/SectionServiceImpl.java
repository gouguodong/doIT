package com.jsu.doIT.service.course.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.course.SectionDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Section;
import com.jsu.doIT.service.course.SectionService;

@Repository(value = "sectionService")
public class SectionServiceImpl extends DaoSupportImpl<Section> implements SectionService {

	@Resource
	private SectionDao dao;

	@Override
	public void save(Section entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Section entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Section entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Section findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Section> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Section> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Section> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public List<Section> findByCourseId(Integer courseId) {
		return dao.findByCourseId(courseId);
	}

	@Override
	public Section findByCourseIdAndSectoinCode(Integer courseId, Integer sectionCode) {
		return dao.findByCourseIdAndSectoinCode(courseId, sectionCode);
	}
}
