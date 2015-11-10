package com.jsu.doIT.dao.post;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Reply;
import com.jsu.doIT.po.User;

public interface ReplyDao extends DaoSupport<Reply> {
	/**
	 *  根据用户编号查找其回复贴
	 * @param currentPage
	 *        当前页码
	 * @param PageSize
	 *		       页面最大记录数
	 * @param userId
	 * 	                    用户编号
	 * @return一个分页对象
	 */
	PageBean findMyReply(Integer currentPage, Integer PageSize,Integer userId);
	int getAdoptNum(User u);


}
