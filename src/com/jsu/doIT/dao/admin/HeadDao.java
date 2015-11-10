package com.jsu.doIT.dao.admin;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Head;

public interface HeadDao extends DaoSupport<Head> {

	/**
	 * 系统头像分页
	 * 
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	PageBean findPage(Integer currentPage, Integer pageSize);

}
