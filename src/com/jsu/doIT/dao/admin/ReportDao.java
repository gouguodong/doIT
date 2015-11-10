package com.jsu.doIT.dao.admin;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Report;

public interface ReportDao  extends DaoSupport<Report> {
	/**
	 * 分页查找过滤字
	 * 
	 * @param currentPage
	 *            当前要查询的页码
	 * @param pageSize
	 *            页码大小
	 * @param filterContext
	 *            过滤字
	 * @return 一个页面
	 */
	PageBean findReportPage(Integer currentPage, Integer pageSize, String... reportReason);
}
