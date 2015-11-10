package com.jsu.doIT.service.admin.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.admin.ReportDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Report;
import com.jsu.doIT.service.admin.ReportService;
@Repository(value = "reportService")
public class ReportServiceImpl extends DaoSupportImpl<Report> implements ReportService {
	@Resource
	private ReportDao dao;
	
	@Override
	public void save(Report entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Report entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Report entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Report findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Report> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Report> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}


	@Override
	public List<Report> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize,
			QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public PageBean findReportPage(Integer currentPage, Integer pageSize,
			String... reportReason) {
		return dao.findReportPage(currentPage, pageSize, reportReason);
	}
	

}
