package com.jsu.doIT.service.post;

import java.util.List;
import java.util.Map;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Postlabel;
import com.jsu.doIT.po.Userpost;

public interface UserPostService extends DaoSupport<Userpost> {
	/**
	 * 根据帖子类型编号，用户编号查找帖子
	 * 
	 * @param currentPage
	 *            当前页码
	 * @param PageSize
	 *            页面最大记录数
	 * @param typeId
	 *            帖子类型编号
	 * @param userId
	 *            用户编号
	 * @return 一个分页对象
	 */
	PageBean findQuePost(Integer currentPage, Integer PageSize, Integer typeId,
			Integer userId);

	/**
	 * 根据帖子标题模糊查找帖子
	 * 
	 * @param title
	 *            帖子标题
	 * @param size
	 *            集合大小
	 * @return 用户帖子集合
	 */
	List<Userpost> findByTitle(String title, Integer size);

	/**
	 * 查找最热帖子
	 * 
	 * @param size
	 *            集合大小
	 * @return 用户帖子集合
	 */
	List<Userpost> topPosts(Integer size);

	/**
	 * 根据过滤集合以及排序集合获取一个帖子分页对象
	 * 
	 * @param currentPage
	 *            当前页码
	 * @param pageSize
	 *            页码大小
	 * @param filterMap
	 *            过滤集合
	 * @param orderMap
	 *            排序
	 * @return 帖子分页对象
	 */
	PageBean findPage(Integer currentPage, Integer pageSize,
			Map<String, Object> filterMap, Map<String, Boolean> orderMap);

	/**
	 * 根据用户标识获取用户的提问数
	 * 
	 * @param userId
	 *            用户标识
	 * @return 用户提问数
	 */
	int getQuestionNum(Integer userId);

	/**
	 * 根据用户标识获取用户的回复数
	 * 
	 * @param userId
	 *            用户标识
	 * @return 用户回复数
	 */
	int getReplyNum(Integer userId);

	/**
	 * 根据帖子类型获取一个用户帖子集合
	 * 
	 * @param type
	 *            帖子类型对象
	 * @param size
	 *            集合大小
	 * @return 用户帖子集合
	 */
	List<Userpost> findByType(Postlabel type, int size);
}
