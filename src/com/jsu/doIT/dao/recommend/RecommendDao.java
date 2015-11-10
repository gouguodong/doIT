package com.jsu.doIT.dao.recommend;

import java.util.List;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.po.Recommend;

public interface RecommendDao extends DaoSupport<Recommend> {

	/**
	 * 根据用户标识为用户推荐课程
	 * 
	 * @param userId
	 * @return
	 */
	Integer[] recommendByUserId(Integer userId);

	/**
	 * 根据课程标识获取推荐集合
	 * 
	 * @param courseId
	 * @return
	 */
	List<Recommend> findByCourseId(Integer courseId);

}
