package com.jsu.doIT.service.recommend;

import java.util.List;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.po.Recommend;

public interface RecommendService extends DaoSupport<Recommend> {

	/**
	 * 根据用户标识获取推荐标识数组
	 * 
	 * @param userId
	 *            用户标识
	 * @return 一个包含推荐标识的数组
	 */
	Integer[] recommendByUserId(Integer userId);

	/**
	 * 根据课程标识获取一个推荐集合
	 * 
	 * @param courseId
	 *            课程标识
	 * @return 推荐集合
	 */
	List<Recommend> findByCourseId(Integer courseId);

}
