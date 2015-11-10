package com.jsu.doIT.service.feedback.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Replyfeed;
import com.jsu.doIT.service.feedback.ReplyFeedService;

@Transactional
@Service(value = "replyFeedService")
public class ReplyFeedServiceImpl extends DaoSupportImpl<Replyfeed> implements ReplyFeedService {

	@Override
	public void save(Replyfeed entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Replyfeed entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Replyfeed entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Replyfeed findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Replyfeed> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Replyfeed> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Replyfeed> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

}
