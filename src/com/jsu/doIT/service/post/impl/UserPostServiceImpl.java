package com.jsu.doIT.service.post.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.post.UserPostDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Postlabel;
import com.jsu.doIT.po.Userpost;
import com.jsu.doIT.service.post.UserPostService;

@Transactional
@Service(value = "userPostService")
public class UserPostServiceImpl extends DaoSupportImpl<Userpost> implements UserPostService {
	@Resource
	private UserPostDao dao;
	@Override
	public void save(Userpost entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Userpost entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Userpost entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Userpost findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Userpost> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Userpost> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Userpost> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}
	
	@Resource
	private UserPostDao userPostDao;
	
	@Override
	public List<Userpost> findByTitle(String title, Integer size) {
		return userPostDao.findByTitle(title, size);
	}

	@Override
	public List<Userpost> topPosts(Integer size) {
		// TODO Auto-generated method stub
		return userPostDao.getTops(size);
	}

	@Override
	public PageBean findPage(Integer currentPage, Integer pageSize,
			Map<String, Object> filterMap, Map<String, Boolean> orderMap) {
		return userPostDao.findPage(currentPage, pageSize, filterMap, orderMap);
	}

	@Override
	public int getQuestionNum(Integer userId) {
		return userPostDao.getQuestionNum(userId);
	}

	@Override
	public int getReplyNum(Integer userId) {
		return userPostDao.getReplyNum(userId);
	}

	@Override
	public List<Userpost> findByType(Postlabel type, int size) {
		return userPostDao.findByType(type, size);
	}

	@Override
	public PageBean findQuePost(Integer currentPage, Integer PageSize,
			Integer typeId, Integer userId) {
		// TODO Auto-generated method stub
		return dao.findQuePost(currentPage, PageSize, typeId, userId);
	}

}
