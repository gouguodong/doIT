package com.jsu.doIT.dao.voide;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.po.Voide;

public interface VoideDao extends DaoSupport<Voide> {

	/**
	 * 根据课程标识获取课程的第n个章节的第m个视频
	 * 
	 * @param courseId
	 * @param sectionNumber
	 * @param number
	 * @return
	 */
	Voide findByCourseId(Integer courseId, Integer sectionNumber, Integer number);

}
