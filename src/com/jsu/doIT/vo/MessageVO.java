package com.jsu.doIT.vo;

public class MessageVO implements java.io.Serializable {

	private static final long serialVersionUID = 5056705238318861911L;

	private Integer messageId;
	private String messageContext;
	private Integer status;
	private String times;
	private UserVO send;
	private UserVO recv;

	public MessageVO() {
	}

	public MessageVO(String messageContext, Integer status) {
		this.messageContext = messageContext;
		this.status = status;
	}

	public Integer getMessageId() {
		return this.messageId;
	}

	public void setMessageId(Integer messageId) {
		this.messageId = messageId;
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

	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

	public UserVO getSend() {
		return send;
	}

	public void setSend(UserVO send) {
		this.send = send;
	}

	public UserVO getRecv() {
		return recv;
	}

	public void setRecv(UserVO recv) {
		this.recv = recv;
	}

}