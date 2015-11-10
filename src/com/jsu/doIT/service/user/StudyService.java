package com.jsu.doIT.service.user;

import java.util.Date;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Study;

public interface StudyService extends DaoSupport<Study> {

	/**
	 * 根据用户标识获取用户学习情况
	 * 
	 * @param userId
	 *            用户标识
	 * @param status
	 *            课程状态
	 * @param pageNuber
	 *            查询到页码
	 * @param pageSize
	 *            一个页码的记录条数
	 * @return 一个分页记录
	 */
	public PageBean findStudyByUserId(Integer userId, Integer status,
			Integer pageNuber, Integer pageSize);

	/**
	 * 根据用户标识和学习时间获取用户学习情况
	 * 
	 * @param userId
	 *            用户标识
	 * @param date
	 *            学习日期
	 * @return 用户学习情况实体
	 */
	public Study findByUserIdAndTime(Integer userId, Date date);
}
