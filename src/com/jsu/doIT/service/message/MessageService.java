package com.jsu.doIT.service.message;

import java.util.List;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.po.Message;

public interface MessageService extends DaoSupport<Message> {

	/**
	 * 根据消息的接收者标识获取消息列表
	 * 
	 * @param userId
	 *            用户标识
	 * @return 消息集合
	 */
	List<Message> findByReceiveId(Integer userId);

	/**
	 * 根据发送用户标识和接收用户标识获取消息列表
	 * 
	 * @param sendId
	 *            发送用户标识
	 * @param receiveId
	 *            接收用户标识
	 * @param pageNumber
	 *            当前页码
	 * @return 消息集合
	 */
	List<Message> findBySendId(Integer sendId, Integer receiveId,
			Integer pageNumber);

	/**
	 * 获取接收的消息
	 * 
	 * @param userId
	 *            用户标识
	 * @return 消息集合
	 */
	List<Message> findByReceiveNumber(Integer userId);

	/**
	 * 根据发送用户标识以及接收用户标识获取消息集合
	 * 
	 * @param sendId
	 *            发送用户标识
	 * @param receiveId
	 *            接收用户标识
	 * @return 消息集合
	 */
	List<Message> findBySendIdAndRec(Integer sendId, Integer receiveId);

}
