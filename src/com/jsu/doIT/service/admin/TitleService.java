package com.jsu.doIT.service.admin;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Title;

public interface TitleService extends DaoSupport<Title> {

	/**
	 * 根据称号名分页
	 * 
	 * @param currentPage
	 *            当前要查询的页码
	 * @param pageSize
	 *            页面大小
	 * @param titleName
	 *            称号名
	 * @return 一个分页对象
	 */
	PageBean findTitlePage(Integer currentPage, Integer pageSize, String... titleName);

}
