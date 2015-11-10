package com.jsu.doIT.service.group.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Usergroup;
import com.jsu.doIT.service.group.UserGroupService;

@Transactional
@Service(value = "userGroupService")
public class UserGroupServiceImpl extends DaoSupportImpl<Usergroup> implements UserGroupService {

	@Override
	public void save(Usergroup entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Usergroup entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Usergroup entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Usergroup findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Usergroup> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Usergroup> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Usergroup> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

}
