package com.jsu.doIT.po;

import java.sql.Timestamp;

/**
 * Message entity. @author MyEclipse Persistence Tools
 */

public class Message implements java.io.Serializable {

	// Fields

	private Integer messageId;
	private User userByReceiveId;
	private User userBySendId;
	private String messageContext;
	private Integer status;
	private Timestamp sendTime;

	// Constructors

	/** default constructor */
	public Message() {
	}

	/** full constructor */
	public Message(User userByReceiveId, User userBySendId, String messageContext, Integer status, Timestamp sendTime) {
		this.userByReceiveId = userByReceiveId;
		this.userBySendId = userBySendId;
		this.messageContext = messageContext;
		this.status = status;
		this.sendTime = sendTime;
	}

	// Property accessors

	public Integer getMessageId() {
		return this.messageId;
	}

	public void setMessageId(Integer messageId) {
		this.messageId = messageId;
	}

	public User getUserByReceiveId() {
		return this.userByReceiveId;
	}

	public void setUserByReceiveId(User userByReceiveId) {
		this.userByReceiveId = userByReceiveId;
	}

	public User getUserBySendId() {
		return this.userBySendId;
	}

	public void setUserBySendId(User userBySendId) {
		this.userBySendId = userBySendId;
	}

	public String getMessageContext() {
		return this.messageContext;
	}

	public void setMessageContext(String messageContext) {
		this.messageContext = messageContext;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Timestamp getSendTime() {
		return this.sendTime;
	}

	public void setSendTime(Timestamp sendTime) {
		this.sendTime = sendTime;
	}

}