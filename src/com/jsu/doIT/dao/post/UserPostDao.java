package com.jsu.doIT.dao.post;

import java.util.List;
import java.util.Map;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Postlabel;
import com.jsu.doIT.po.Userpost;

public interface UserPostDao extends DaoSupport<Userpost> {
	/**
	 * 根据帖子类型编号，用户编号查找帖子
	 * @param currentPage
	 * 		              当前页码
	 * @param PageSize
	 * 			页面最大记录数
	 * @param typeId
	 * 			帖子类型编号
	 * @param userId
	 * 			用户编号
	 * @return  一个分页对象
	 */
	PageBean findQuePost(Integer currentPage,Integer PageSize,Integer typeId,Integer userId);
	List<Userpost> findByTitle(String title, Integer size);
	List<Userpost> getTops(Integer size);
	/**
	 * 分页
	 * @param currentPage
	 * @param pageSize
	 * @param filterMap  筛选条件
	 * @param orderMap 排序条件
	 * @return
	 */
	PageBean findPage(Integer currentPage, Integer pageSize, Map<String, Object> filterMap, Map<String, Boolean> orderMap);
	int getQuestionNum(Integer userId);
	int getReplyNum(Integer userId);
	List<Userpost> findByType(Postlabel type, int size);
}
