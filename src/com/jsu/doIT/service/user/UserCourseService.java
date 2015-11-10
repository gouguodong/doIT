package com.jsu.doIT.service.user;

import java.util.List;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Usercourse;
import com.jsu.doIT.vo.PageVO;

public interface UserCourseService extends DaoSupport<Usercourse> {
	/**
	 * 根据关系类型编号，用户编号查找用户关注课程
	 * 
	 * @param currentPage
	 *            当前页码
	 * @param PageSize
	 *            页面最大记录数
	 * @param typeId
	 *            课程关系类型
	 * @param userId
	 *            用户编号
	 * @return 一个分页对象
	 */
	PageBean findAttentionCourse(Integer currentPage, Integer PageSize,
			Integer typeId, Integer userId);

	/**
	 * 根据一个分页对象获取用户课程集合
	 * 
	 * @param vo
	 *            分页对象
	 * @return 用户课程集合
	 */
	List<Usercourse> findUsercoursePage(PageVO vo);

	/**
	 * 根据用户标识和课程标识查找用户课程关系
	 * 
	 * @param userId
	 *            用户标识
	 * @param courseId
	 *            课程标识
	 * @return 用户课程对象
	 */
	Usercourse findByUserIdAndCourseId(Integer userId, Integer courseId);
}
