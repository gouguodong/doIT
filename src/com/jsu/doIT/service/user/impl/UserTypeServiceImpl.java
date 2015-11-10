package com.jsu.doIT.service.user.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Usertype;
import com.jsu.doIT.service.user.UsertypeService;

@Transactional
@Service(value = "usertypeService")
public class UserTypeServiceImpl extends DaoSupportImpl<Usertype> implements UsertypeService {

	@Override
	public void save(Usertype entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Usertype entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Usertype entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Usertype findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Usertype> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Usertype> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Usertype> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

}
