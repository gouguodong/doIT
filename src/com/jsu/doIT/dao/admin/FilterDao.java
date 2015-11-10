package com.jsu.doIT.dao.admin;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Filter;

public interface FilterDao extends DaoSupport<Filter> {

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
	PageBean findFilterPage(Integer currentPage, Integer pageSize, String... filterContext);

}
