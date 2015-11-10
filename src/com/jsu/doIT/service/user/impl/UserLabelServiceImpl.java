package com.jsu.doIT.service.user.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Userlabel;
import com.jsu.doIT.service.user.UserLabelService;

@Transactional
@Service(value = "userLabelService")
public class UserLabelServiceImpl extends DaoSupportImpl<Userlabel> implements UserLabelService {

	@Override
	public void save(Userlabel entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Userlabel entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Userlabel entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Userlabel findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Userlabel> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Userlabel> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Userlabel> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

}
