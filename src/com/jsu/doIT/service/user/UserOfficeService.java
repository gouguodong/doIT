package com.jsu.doIT.service.user;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.po.Useroffice;

public interface UserOfficeService extends DaoSupport<Useroffice> {

	/**
	 * 根据职业名获取职业实体
	 * 
	 * @param officeName
	 * @return
	 */
	Useroffice findByName(String officeName);

}
