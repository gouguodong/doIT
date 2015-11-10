package com.jsu.doIT.service.course;

import java.util.List;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.po.Section;

public interface SectionService extends DaoSupport<Section> {

	/**
	 * 根据课程编号查找课程的所有章节
	 * 
	 * @param courseId
	 *            课程编号
	 * @return 章节集合
	 */
	List<Section> findByCourseId(Integer courseId);

	/**
	 * 根据课程标识和章节顺序码获取章节
	 * 
	 * @param courseId
	 *            课程标识
	 * @param sectionCode
	 *            章节号
	 * @return 一个课程章节
	 */
	Section findByCourseIdAndSectoinCode(Integer courseId, Integer sectionCode);

}
