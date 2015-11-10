package com.jsu.doIT.service.voide;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.po.Voide;

public interface VoideService extends DaoSupport<Voide> {

	/**
	 * 根据课程标识获取课程的第n个章节的第m个视频
	 * 
	 * @param courseId
	 *            课程标识
	 * @param sectionNumber
	 *            章节标识
	 * @param number
	 *            视频号
	 * @return
	 */
	Voide findByCourseId(Integer courseId, Integer sectionNumber, Integer number);

}
