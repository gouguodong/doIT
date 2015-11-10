package com.jsu.doIT.dao.code.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.code.UserCodeDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Usercode;

@Repository(value = "userCodeDao")
public class UserCodeDaoImpl extends DaoSupportImpl<Usercode> implements UserCodeDao {

	@Override
	public PageBean findCodeByUserId(Integer userId, Integer currentPage, Integer pageSize) {
		QueryHelper queryHelper=new QueryHelper(Usercode.class, "model");
		String sql="userId=?";
		queryHelper.addCondition(sql,userId);
		queryHelper.addOrderProperty("saveTime", false);
		return super.getPageBean(currentPage, pageSize, queryHelper);
	}

}
