package com.jsu.doIT.dao.user;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.po.Useroffice;

public interface UserOfficeDao extends DaoSupport<Useroffice> {

	/**
	 * 根据职业名获取职业实体
	 * 
	 * @param officeName
	 * @return
	 */
	Useroffice findByName(String officeName);

}
