package com.jsu.doIT.dao.admin.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.admin.TitleDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Title;

@Repository(value = "titleDao")
public class TitleDaoImpl extends DaoSupportImpl<Title> implements TitleDao {

	@Override
	public PageBean findTitlePage(Integer currentPage, Integer pageSize, String[] titleName) {
		QueryHelper queryHelper = new QueryHelper(Title.class, "title");

		if (titleName != null && titleName.length > 0 && titleName[0] != null && titleName[0].length() > 0) {
			queryHelper.addCondition(" titleName like '%" + titleName[0] + "%' ");
		}

		queryHelper.addOrderProperty("addTime", false);
		return getPageBean(currentPage, pageSize, queryHelper);
	}

}
