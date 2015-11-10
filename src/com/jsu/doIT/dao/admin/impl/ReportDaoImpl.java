package com.jsu.doIT.dao.admin.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.admin.ReportDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Report;


@Repository(value = "reportDao")
public class ReportDaoImpl extends DaoSupportImpl<Report> implements ReportDao {

	@Override
	public PageBean findReportPage(Integer currentPage, Integer pageSize, String... reportReason) {
		QueryHelper queryHelper = new QueryHelper(Report.class, "report");
		if (reportReason != null && reportReason.length > 0 && reportReason[0] != null && reportReason[0].length() > 0) {
			queryHelper.addCondition(" reportReason like '%" + reportReason[0] + "%' ");
		}
		//queryHelper.addOrderProperty("reportId", false);
		return getPageBean(currentPage, pageSize, queryHelper);
	}

}

