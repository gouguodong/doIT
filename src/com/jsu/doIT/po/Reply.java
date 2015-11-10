package com.jsu.doIT.po;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Reply entity. @author MyEclipse Persistence Tools
 */

public class Reply implements java.io.Serializable {

	// Fields

	private Integer replyId;
	private User user;
	private Reply reply;
	private Userpost userpost;
	private String replyUrl;
	private String replyContext;
	private Integer replyNumber;
	private Timestamp replyTime;
	private Integer status;
	private Set reports = new HashSet(0);
	private Set replies = new HashSet(0);

	// Constructors

	/** default constructor */
	public Reply() {
	}

	/** minimal constructor */
	public Reply(User user, String replyContext) {
		this.user = user;
		this.replyContext = replyContext;
	}

	/** full constructor */
	public Reply(User user, Reply reply, Userpost userpost, String replyUrl, String replyContext, Integer replyNumber,
			Timestamp replyTime, Integer status, Set reports, Set replies) {
		this.user = user;
		this.reply = reply;
		this.userpost = userpost;
		this.replyUrl = replyUrl;
		this.replyContext = replyContext;
		this.replyNumber = replyNumber;
		this.replyTime = replyTime;
		this.status = status;
		this.reports = reports;
		this.replies = replies;
	}

	// Property accessors

	public Integer getReplyId() {
		return this.replyId;
	}

	public void setReplyId(Integer replyId) {
		this.replyId = replyId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Reply getReply() {
		return this.reply;
	}

	public void setReply(Reply reply) {
		this.reply = reply;
	}

	public Userpost getUserpost() {
		return this.userpost;
	}

	public void setUserpost(Userpost userpost) {
		this.userpost = userpost;
	}

	public String getReplyUrl() {
		return this.replyUrl;
	}

	public void setReplyUrl(String replyUrl) {
		this.replyUrl = replyUrl;
	}

	public String getReplyContext() {
		return this.replyContext;
	}

	public void setReplyContext(String replyContext) {
		this.replyContext = replyContext;
	}

	public Integer getReplyNumber() {
		return this.replyNumber;
	}

	public void setReplyNumber(Integer replyNumber) {
		this.replyNumber = replyNumber;
	}

	public Timestamp getReplyTime() {
		return this.replyTime;
	}

	public void setReplyTime(Timestamp replyTime) {
		this.replyTime = replyTime;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Set getReports() {
		return this.reports;
	}

	public void setReports(Set reports) {
		this.reports = reports;
	}

	public Set getReplies() {
		return this.replies;
	}

	public void setReplies(Set replies) {
		this.replies = replies;
	}

}