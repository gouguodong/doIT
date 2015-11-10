package com.jsu.doIT.service.friend.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.friend.ApplyfriendDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Applyfriend;
import com.jsu.doIT.service.friend.ApplyfriendService;

@Transactional
@Service(value = "applyfriendService")
public class ApplyfriendServiceImpl extends DaoSupportImpl<Applyfriend> implements ApplyfriendService {

	@Resource
	private ApplyfriendDao dao;
	
	@Override
	public void save(Applyfriend entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Applyfriend entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Applyfriend entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Applyfriend findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Applyfriend> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Applyfriend> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Applyfriend> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public List<Applyfriend> findByReceiveId(Integer userId) {
		return dao.findByReceiveId(userId);
	}
	
	

}
