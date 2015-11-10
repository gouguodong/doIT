package com.jsu.doIT.service.code.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.code.UserCodeDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Usercode;
import com.jsu.doIT.service.code.UserCodeService;

@Repository(value = "userCodeService")
public class UserCodeServiceImpl extends DaoSupportImpl<Usercode> implements UserCodeService {
	@Resource
	private UserCodeDao dao;

	@Override
	public void save(Usercode entity) {
		super.save(entity);
	}

	@Override
	public void delete(Usercode entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Usercode entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Usercode findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Usercode> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Usercode> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Usercode> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public PageBean findCodeByUserId(Integer userId, Integer currentPage, Integer PageSize) {
		return dao.findCodeByUserId(userId, currentPage, PageSize);
	}

}
