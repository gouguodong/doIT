package com.jsu.doIT.vo;

/**
 * Applyfriend的VO对象
 * 
 * @author hadoop
 * 
 */

public class ApplyfriendVO implements java.io.Serializable {

	private static final long serialVersionUID = 4092873329298267553L;

	private Integer applyId;
	private String replayTime;
	private Integer status;
	private UserVO userA;
	private UserVO userB;
	private String context;

	public ApplyfriendVO() {
	}

	public Integer getApplyId() {
		return this.applyId;
	}

	public void setApplyId(Integer applyId) {
		this.applyId = applyId;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getReplayTime() {
		return replayTime;
	}

	public void setReplayTime(String replayTime) {
		this.replayTime = replayTime;
	}

	public UserVO getUserA() {
		return userA;
	}

	public void setUserA(UserVO userA) {
		this.userA = userA;
	}

	public UserVO getUserB() {
		return userB;
	}

	public void setUserB(UserVO userB) {
		this.userB = userB;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

}