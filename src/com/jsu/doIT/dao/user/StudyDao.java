package com.jsu.doIT.dao.user;

import java.util.Date;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Study;

public interface StudyDao extends DaoSupport<Study> {

	/**
	 * 根据用户标志获取用户学习情况
	 * 
	 * @param userId
	 *            用户标识
	 * @param status
	 *            课程状态
	 * @return
	 */
	PageBean findStudyByUserId(Integer userId, Integer status, Integer pageNuber, Integer pageSize);

	/**
	 * 根据用户标识和学习日期获取学习情况
	 * 
	 * @param userId
	 * @param date
	 * @return
	 */
	Study findByUserIdAndTime(Integer userId, Date date);

}
