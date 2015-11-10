package com.jsu.doIT.dao.course;

import java.util.List;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Course;

public interface CourseDao extends DaoSupport<Course> {

	/**
	 * 查找全部课程、带分页
	 * 
	 * @param currentPage
	 *            当前页码
	 * @param pageSize
	 *            页面最大记录数
	 * @param level
	 *            难度筛选
	 * @return 一个分页对象
	 */
	PageBean findCourseByTypeId(Integer currentPage, Integer pageSize, Integer typeId, String... level);

	/**
	 * 根据课程类型编号查找课程
	 * 
	 * @param currentPage
	 *            当前页码
	 * @param pageSize
	 *            页面最大纪录数
	 * @param typeId
	 *            类型编号
	 * @param level
	 *            难度筛选
	 * @return 一个分页对象
	 */
	PageBean findAllCourse(Integer currentPage, Integer pageSize, String... level);

	/**
	 * 查找最热课程、带分页
	 * 
	 * @param currentPage
	 *            当前页码
	 * @param pageSize
	 *            页面最大记录数
	 * @param level
	 *            难度筛选
	 * @return 一个分页对象
	 */
	PageBean getHotCourses(Integer currentPage, Integer pageSize, String... level);

	/**
	 * 根据教师编号查找该教师所有开设的课程
	 * 
	 * @param teacherId
	 *            教师编号
	 * @param level
	 *            难度筛选
	 * @return 课程集合
	 */
	List<Course> findCourseByTeacherId(Integer teacherId, String... level);

}
