package com.jsu.doIT.po;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Feedback entity. @author MyEclipse Persistence Tools
 */

public class Feedback implements java.io.Serializable {

	// Fields

	private Integer feedId;
	private User user;
	private String feedContext;
	private Timestamp feedTime;
	private Integer status;
	private Set replyfeeds = new HashSet(0);

	// Constructors

	/** default constructor */
	public Feedback() {
	}

	/** minimal constructor */
	public Feedback(String feedContext) {
		this.feedContext = feedContext;
	}

	/** full constructor */
	public Feedback(User user, String feedContext, Timestamp feedTime, Integer status, Set replyfeeds) {
		this.user = user;
		this.feedContext = feedContext;
		this.feedTime = feedTime;
		this.status = status;
		this.replyfeeds = replyfeeds;
	}

	// Property accessors

	public Integer getFeedId() {
		return this.feedId;
	}

	public void setFeedId(Integer feedId) {
		this.feedId = feedId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getFeedContext() {
		return this.feedContext;
	}

	public void setFeedContext(String feedContext) {
		this.feedContext = feedContext;
	}

	public Timestamp getFeedTime() {
		return this.feedTime;
	}

	public void setFeedTime(Timestamp feedTime) {
		this.feedTime = feedTime;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Set getReplyfeeds() {
		return this.replyfeeds;
	}

	public void setReplyfeeds(Set replyfeeds) {
		this.replyfeeds = replyfeeds;
	}

}