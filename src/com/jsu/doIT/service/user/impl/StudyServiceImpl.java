package com.jsu.doIT.service.user.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.user.StudyDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Study;
import com.jsu.doIT.service.user.StudyService;

@Transactional
@Service(value = "studyService")
public class StudyServiceImpl extends DaoSupportImpl<Study> implements StudyService {

	@Resource
	private StudyDao dao;

	@Override
	public void save(Study entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Study entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Study entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Study findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Study> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Study> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Study> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public PageBean findStudyByUserId(Integer userId, Integer status, Integer pageNuber, Integer pageSize) {
		return dao.findStudyByUserId(userId, status, pageNuber, pageSize);
	}

	@Override
	public Study findByUserIdAndTime(Integer userId, Date date) {
		return dao.findByUserIdAndTime(userId, date);
	}

}
