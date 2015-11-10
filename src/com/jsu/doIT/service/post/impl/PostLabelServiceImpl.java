package com.jsu.doIT.service.post.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Postlabel;
import com.jsu.doIT.service.post.PostLabelService;

@Transactional
@Service(value = "postLabelService")
public class PostLabelServiceImpl extends DaoSupportImpl<Postlabel> implements PostLabelService {

	@Override
	public void save(Postlabel entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Postlabel entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Postlabel entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Postlabel findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Postlabel> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Postlabel> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Postlabel> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

}
