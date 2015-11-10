package com.jsu.doIT.service.user.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.user.UserDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.User;
import com.jsu.doIT.service.user.UserService;

@Transactional
@Service(value = "userService")
public class UserServiceImpl extends DaoSupportImpl<User> implements UserService {

	@Resource
	private UserDao dao;

	@Override
	public void save(User entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(User entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(User entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public User findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<User> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<User> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public User login(String userName, String userPwd) {
		return dao.login(userName, userPwd);
	}

	@Override
	public Boolean remoteName(String userName) {
		return dao.remoteName(userName);
	}

	@Override
	public PageBean findPage(Integer currentPage, Integer pageSize, Date begin, Date end, String userName, Integer userStatus) {
		return dao.findPage(currentPage, pageSize, begin, end, userName, userStatus);
	}

	@Override
	public PageBean topByReplys(Integer currentPage, Integer pageSize) {
		return dao.getTopByReplys(currentPage, pageSize);
	}

	@Override
	public User findByUserName(String userName) {
		return dao.findByUserName(userName);
	}

}
