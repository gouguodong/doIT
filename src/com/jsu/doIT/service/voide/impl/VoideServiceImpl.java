package com.jsu.doIT.service.voide.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.voide.VoideDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Voide;
import com.jsu.doIT.service.voide.VoideService;

@Transactional
@Service(value = "voideService")
public class VoideServiceImpl extends DaoSupportImpl<Voide> implements VoideService {

	@Resource
	private VoideDao dao;

	@Override
	public void save(Voide entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Voide entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Voide entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Voide findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Voide> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Voide> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Voide> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public Voide findByCourseId(Integer courseId, Integer sectionNumber, Integer number) {
		return dao.findByCourseId(courseId, sectionNumber, number);
	}

}
