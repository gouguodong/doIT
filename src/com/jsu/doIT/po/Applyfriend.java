package com.jsu.doIT.po;

import java.sql.Timestamp;

/**
 * Applyfriend entity. @author MyEclipse Persistence Tools
 */

public class Applyfriend implements java.io.Serializable {

	// Fields

	private Integer applyId;
	private User userByApplyUserId;
	private User userByRecUserId;
	private Timestamp replayTime;
	private Integer status;
	private String context;

	// Constructors

	/** default constructor */
	public Applyfriend() {
	}

	/** full constructor */
	public Applyfriend(User userByApplyUserId, User userByRecUserId, Timestamp replayTime, Integer status, String context) {
		this.userByApplyUserId = userByApplyUserId;
		this.userByRecUserId = userByRecUserId;
		this.replayTime = replayTime;
		this.status = status;
		this.context = context;
	}

	// Property accessors

	public Integer getApplyId() {
		return this.applyId;
	}

	public void setApplyId(Integer applyId) {
		this.applyId = applyId;
	}

	public User getUserByApplyUserId() {
		return this.userByApplyUserId;
	}

	public void setUserByApplyUserId(User userByApplyUserId) {
		this.userByApplyUserId = userByApplyUserId;
	}

	public User getUserByRecUserId() {
		return this.userByRecUserId;
	}

	public void setUserByRecUserId(User userByRecUserId) {
		this.userByRecUserId = userByRecUserId;
	}

	public Timestamp getReplayTime() {
		return this.replayTime;
	}

	public void setReplayTime(Timestamp replayTime) {
		this.replayTime = replayTime;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getContext() {
		return this.context;
	}

	public void setContext(String context) {
		this.context = context;
	}

}