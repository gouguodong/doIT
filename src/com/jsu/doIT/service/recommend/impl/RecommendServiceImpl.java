package com.jsu.doIT.service.recommend.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.recommend.RecommendDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Recommend;
import com.jsu.doIT.service.recommend.RecommendService;

@Transactional
@Service(value = "recommendService")
public class RecommendServiceImpl extends DaoSupportImpl<Recommend> implements RecommendService {

	@Resource
	private RecommendDao dao;
	
	@Override
	public void save(Recommend entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Recommend entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Recommend entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Recommend findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Recommend> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Recommend> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Recommend> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public Integer[] recommendByUserId(Integer userId) {
		return dao.recommendByUserId(userId);
	}

	@Override
	public List<Recommend> findByCourseId(Integer courseId) {
		return dao.findByCourseId(courseId);
	}

}
