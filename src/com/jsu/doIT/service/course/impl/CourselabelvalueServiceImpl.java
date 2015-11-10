package com.jsu.doIT.service.course.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Courselabelvalue;
import com.jsu.doIT.service.course.CourselabelvalueService;

@Repository(value = "courselabelvalueService")
public class CourselabelvalueServiceImpl extends DaoSupportImpl<Courselabelvalue> implements CourselabelvalueService {

	@Override
	public void save(Courselabelvalue entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Courselabelvalue entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Courselabelvalue entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Courselabelvalue findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Courselabelvalue> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Courselabelvalue> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public void setParams(Query q, Object... params) {
		// TODO Auto-generated method stub
		super.setParams(q, params);
	}

	@Override
	public Courselabelvalue get(String hql, Object... params) {
		// TODO Auto-generated method stub
		return super.get(hql, params);
	}

	@Override
	public List<Courselabelvalue> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

}
