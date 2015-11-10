package com.jsu.doIT.service.post;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Reply;
import com.jsu.doIT.po.User;

public interface ReplyService extends DaoSupport<Reply> {
	/**
	 * 根据用户编号查找其回复贴
	 * 
	 * @param currentPage
	 *            当前页码
	 * @param PageSize
	 *            页面最大记录数
	 * @param userId
	 *            用户编号
	 * @return 一个分页对象
	 */
	PageBean findMyReply(Integer currentPage, Integer PageSize, Integer userId);

	/**
	 * 根据用户实体获取用户的采用数
	 * 
	 * @param u
	 *            用户实体
	 * @return 用户采用数
	 */
	int getAdoptNum(User u);

}
