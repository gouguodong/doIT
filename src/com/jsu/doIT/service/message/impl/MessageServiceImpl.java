package com.jsu.doIT.service.message.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.message.MessageDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Message;
import com.jsu.doIT.service.message.MessageService;

@Transactional
@Service(value = "messageService")
public class MessageServiceImpl extends DaoSupportImpl<Message> implements MessageService {

	@Resource
	private MessageDao dao;

	@Override
	public void save(Message entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Message entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Message entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Message findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Message> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Message> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Message> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public List<Message> findByReceiveId(Integer userId) {
		return dao.findByReceiveId(userId);
	}

	@Override
	public List<Message> findBySendId(Integer sendId, Integer receiveId, Integer pageNumber) {
		return dao.findBySendId(sendId, receiveId, pageNumber);
	}

	@Override
	public List<Message> findByReceiveNumber(Integer userId) {
		return dao.findByReceiveNumber(userId);
	}

	@Override
	public List<Message> findBySendIdAndRec(Integer sendId, Integer receiveId) {
		return dao.findBySendIdAndRec(sendId, receiveId);
	}

}
