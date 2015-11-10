package com.jsu.doIT.service.admin.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.admin.TitleDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Title;
import com.jsu.doIT.service.admin.TitleService;

@Repository(value = "titleService")
public class TitleServiceImpl extends DaoSupportImpl<Title> implements TitleService {

	@Resource
	private TitleDao dao;
	
	@Override
	public void save(Title entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Title entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Title entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Title findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Title> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Title> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Title> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public PageBean findTitlePage(Integer currentPage, Integer pageSize, String... titleName) {
		return dao.findTitlePage(currentPage, pageSize, titleName);
	}

}
