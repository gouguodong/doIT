package com.jsu.doIT.vo;

public class UserReplyVO {

	private Integer replyId;
	private Integer replyNumber;
	private String replyContext;
	private String replyTime;
	private Integer status;
	private UserpostVO userpostVO;
	private UserVO userVO;

	public UserReplyVO() {
		super();
	}

	public Integer getReplyId() {
		return replyId;
	}

	public void setReplyId(Integer replyId) {
		this.replyId = replyId;
	}

	public Integer getReplyNumber() {
		return replyNumber;
	}

	public void setReplyNumber(Integer replyNumber) {
		this.replyNumber = replyNumber;
	}

	public String getReplyContext() {
		return replyContext;
	}

	public void setReplyContext(String replyContext) {
		this.replyContext = replyContext;
	}

	public String getReplyTime() {
		return replyTime;
	}

	public void setReplyTime(String replyTime) {
		this.replyTime = replyTime;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public UserpostVO getUserpostVO() {
		return userpostVO;
	}

	public void setUserpostVO(UserpostVO userpostVO) {
		this.userpostVO = userpostVO;
	}

	public UserVO getUserVO() {
		return userVO;
	}

	public void setUserVO(UserVO userVO) {
		this.userVO = userVO;
	}

	public UserReplyVO(Integer replyId, Integer replyNumber, String replyContext, String replyTime, Integer status,
			UserpostVO userpostVO, UserVO userVO) {
		super();
		this.replyId = replyId;
		this.replyNumber = replyNumber;
		this.replyContext = replyContext;
		this.replyTime = replyTime;
		this.status = status;
		this.userpostVO = userpostVO;
		this.userVO = userVO;
	}

}
