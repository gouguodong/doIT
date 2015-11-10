package com.jsu.doIT.dao.admin;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.po.Admin;

public interface AdminDao extends DaoSupport<Admin> {

	/**
	 * 管理员登录
	 * 
	 * @param adminName
	 * @param adminPwd
	 * @return
	 */
	Admin login(String adminName, String adminPwd);

}
