package com.jsu.doIT.service.user;

import java.util.Date;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.User;

public interface UserService extends DaoSupport<User> {

	/**
	 * 根据用户名/邮箱/手机号、密码登录
	 * 
	 * @param userName
	 *            用户名、邮箱、手机号
	 * @param userPwd
	 *            用户密码
	 * @return 用户实例
	 */
	User login(String userName, String userPwd);

	/**
	 * 验证用户名/邮箱/手机是否存在
	 * 
	 * @param userName
	 *            用户名/邮箱/手机
	 * @return 如果存在则返回true、否则false
	 */
	Boolean remoteName(String userName);

	/**
	 * 用户分页
	 * 
	 * @param currentPage
	 *            当前查询页码
	 * @param pageSize
	 *            页面大小
	 * @param begin
	 *            起始日期
	 * @param end
	 *            结束日期
	 * @param userName
	 *            模糊查找用户名
	 * @param userStatus
	 *            用户状态
	 * @return 用户分页
	 */
	PageBean findPage(Integer currentPage, Integer pageSize, Date begin,
			Date end, String userName, Integer userStatus);

	/**
	 * 根据回复量获取用户列表
	 * 
	 * @param currentPage
	 * @param pageSize
	 * @return 用户分页
	 */
	PageBean topByReplys(Integer currentPage, Integer pageSize);

	/**
	 * 根据用户名获取用户实体
	 * 
	 * @param userName 用户名
	 * @return 用户实体
	 */
	User findByUserName(String userName);

}
