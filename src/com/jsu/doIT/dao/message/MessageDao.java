package com.jsu.doIT.dao.message;

import java.util.List;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.po.Message;

public interface MessageDao extends DaoSupport<Message> {

	/**
	 * 根据消息的接收者获取消息列表
	 * 
	 * @param userId
	 * @return
	 */
	List<Message> findByReceiveId(Integer userId);

	/**
	 * 根据发送用户标识和接收用户标识获取消息列表
	 * 
	 * @param sendId
	 *            发送用户标识
	 * @param receiveId
	 *            接收用户标识
	 * @param pageNubmer
	 *            当前页码
	 * @return
	 */
	List<Message> findBySendId(Integer sendId, Integer receiveId, Integer pageNubmer);

	/**
	 * 获取接收的消息
	 * 
	 * @param userId
	 * @return
	 */
	List<Message> findByReceiveNumber(Integer userId);

	List<Message> findBySendIdAndRec(Integer sendId, Integer receiveId);

}
