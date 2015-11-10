package com.jsu.doIT.dao.admin.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.admin.FilterDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Filter;

@Repository(value = "filterDao")
public class FilterDaoImpl extends DaoSupportImpl<Filter> implements FilterDao {

	@Override
	public PageBean findFilterPage(Integer currentPage, Integer pageSize, String... filterContext) {
		QueryHelper queryHelper = new QueryHelper(Filter.class, "filter");
		if (filterContext != null && filterContext.length > 0 && filterContext[0] != null && filterContext[0].length() > 0) {
			queryHelper.addCondition(" filterContext like '%" + filterContext[0] + "%' ");
		}
		queryHelper.addOrderProperty("addTime", false);
		return getPageBean(currentPage, pageSize, queryHelper);
	}

}
