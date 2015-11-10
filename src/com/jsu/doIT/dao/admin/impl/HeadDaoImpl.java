package com.jsu.doIT.dao.admin.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.admin.HeadDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Head;

@Repository(value = "headDao")
public class HeadDaoImpl extends DaoSupportImpl<Head> implements HeadDao {

	@Override
	public PageBean findPage(Integer currentPage, Integer pageSize) {
		QueryHelper queryHelper = new QueryHelper(Head.class, "head");
		queryHelper.addOrderProperty("addTime", false);
		return getPageBean(currentPage, pageSize, queryHelper);
	}

}
