package com.jsu.doIT.service.feedback.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.feedback.FeedBackDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Feedback;
import com.jsu.doIT.service.feedback.FeedBackService;

@Transactional
@Service(value = "feedBackService")
public class FeedBackServiceImpl extends DaoSupportImpl<Feedback> implements FeedBackService {

	@Resource
	private FeedBackDao dao;
	
	@Override
	public void save(Feedback entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Feedback entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Feedback entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Feedback findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Feedback> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Feedback> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Feedback> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public PageBean findPage(Integer currentPage, Integer pageSize, String... userName) {
		return dao.findPage(currentPage, pageSize, userName);
	}

}
