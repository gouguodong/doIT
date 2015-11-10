package com.jsu.doIT.service.user.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.user.UserOfficeDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Useroffice;
import com.jsu.doIT.service.user.UserOfficeService;

@Transactional
@Service(value = "userOfficeService")
public class UserOfficeServiceImpl extends DaoSupportImpl<Useroffice> implements UserOfficeService {

	private UserOfficeDao dao;

	@Override
	public void save(Useroffice entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Useroffice entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Useroffice entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Useroffice findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Useroffice> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Useroffice> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Useroffice> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public Useroffice findByName(String officeName) {
		return dao.findByName(officeName);
	}

}
