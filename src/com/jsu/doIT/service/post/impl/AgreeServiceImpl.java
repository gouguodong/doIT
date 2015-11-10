package com.jsu.doIT.service.post.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Agree;
import com.jsu.doIT.service.post.AgreeService;

@Transactional
@Service(value = "agreeService")
public class AgreeServiceImpl extends DaoSupportImpl<Agree> implements AgreeService {

	@Override
	public void save(Agree entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Agree entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Agree entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Agree findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Agree> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Agree> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Agree> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

}
