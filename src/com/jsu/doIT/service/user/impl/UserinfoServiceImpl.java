package com.jsu.doIT.service.user.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Userinfo;
import com.jsu.doIT.service.user.UserinfoService;

@Transactional
@Service(value = "userinfoService")
public class UserinfoServiceImpl extends DaoSupportImpl<Userinfo> implements UserinfoService {

	@Override
	public void save(Userinfo entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Userinfo entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Userinfo entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Userinfo findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Userinfo> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Userinfo> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Userinfo> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

}
