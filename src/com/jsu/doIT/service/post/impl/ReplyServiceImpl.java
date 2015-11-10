package com.jsu.doIT.service.post.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.post.ReplyDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Reply;
import com.jsu.doIT.po.User;
import com.jsu.doIT.service.post.ReplyService;

@Transactional
@Service(value = "replyService")
public class ReplyServiceImpl extends DaoSupportImpl<Reply> implements ReplyService {
	@Resource
	private ReplyDao dao;
	@Resource
	private ReplyDao replyDao;

	@Override
	public void save(Reply entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Reply entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Reply entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Reply findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Reply> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Reply> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Reply> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public PageBean findMyReply(Integer currentPage, Integer PageSize, Integer userId) {
		return dao.findMyReply(currentPage, PageSize, userId);
	}

	@Override
	public int getAdoptNum(User u) {
		// TODO Auto-generated method stub
		return replyDao.getAdoptNum(u);
	}

}
