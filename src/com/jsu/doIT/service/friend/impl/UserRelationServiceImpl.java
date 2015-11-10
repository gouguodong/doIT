package com.jsu.doIT.service.friend.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.friend.UserRelationDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Userrelation;
import com.jsu.doIT.service.friend.UserRelationService;

@Transactional
@Service(value = "userRelationService")
public class UserRelationServiceImpl extends DaoSupportImpl<Userrelation> implements UserRelationService {

	@Resource
	private UserRelationDao dao;

	@Override
	public void save(Userrelation entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Userrelation entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Userrelation entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Userrelation findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Userrelation> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Userrelation> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Userrelation> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public List<Userrelation> findbyUserId(Integer userId) {
		return dao.findbyUserId(userId);
	}

	@Override
	public Userrelation findbyUserIdAndFriendId(Integer userId, Integer friendId) {
		return dao.findbyUserIdAndFriendId(userId, friendId);
	}

}
