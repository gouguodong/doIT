package com.jsu.doIT.service.code.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Codetype;
import com.jsu.doIT.service.code.CodeTypeService;

@Repository(value = "codeTypeService")
public class CodeTypeServiceImpl extends DaoSupportImpl<Codetype> implements CodeTypeService {

	@Override
	public void save(Codetype entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Codetype entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Codetype entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Codetype findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Codetype> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Codetype> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Codetype> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

}
