package com.jsu.doIT.service.admin.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.admin.AdminDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Admin;
import com.jsu.doIT.service.admin.AdminService;

@Repository(value = "adminService")
public class AdminServiceImpl extends DaoSupportImpl<Admin> implements AdminService {

	@Resource
	private AdminDao dao;

	@Override
	public void save(Admin entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Admin entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Admin entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Admin findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Admin> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Admin> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Admin> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public Admin login(String adminName, String adminPwd) {
		return dao.login(adminName, adminPwd);
	}

}
