package com.jsu.doIT.service.admin;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Head;

public interface HeadService extends DaoSupport<Head> {

	/**
	 * 系统头像分页
	 * 
	 * @param currentPage
	 *            当前页面
	 * @param pageSize
	 *            页面大小
	 * @return 一个分页对象
	 */
	PageBean findPage(Integer currentPage, Integer pageSize);

}
