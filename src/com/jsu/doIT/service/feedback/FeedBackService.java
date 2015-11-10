package com.jsu.doIT.service.feedback;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Feedback;

public interface FeedBackService extends DaoSupport<Feedback> {

	/**
	 * 分页意见反馈
	 * 
	 * @param currentPage
	 *            要检索的页面
	 * @param pageSize
	 *            页面大小
	 * @param userName
	 *            用户名
	 * @return 一个分页集
	 */
	PageBean findPage(Integer currentPage, Integer pageSize, String... userName);

}
