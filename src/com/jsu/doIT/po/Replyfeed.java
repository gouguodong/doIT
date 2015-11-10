package com.jsu.doIT.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Replyfeed entity. @author MyEclipse Persistence Tools
 */

public class Replyfeed implements java.io.Serializable {

	// Fields

	private Integer replyId;
	private Feedback feedback;
	private String replyContext;
	private Set admins = new HashSet(0);

	// Constructors

	/** default constructor */
	public Replyfeed() {
	}

	/** minimal constructor */
	public Replyfeed(String replyContext) {
		this.replyContext = replyContext;
	}

	/** full constructor */
	public Replyfeed(Feedback feedback, String replyContext, Set admins) {
		this.feedback = feedback;
		this.replyContext = replyContext;
		this.admins = admins;
	}

	// Property accessors

	public Integer getReplyId() {
		return this.replyId;
	}

	public void setReplyId(Integer replyId) {
		this.replyId = replyId;
	}

	public Feedback getFeedback() {
		return this.feedback;
	}

	public void setFeedback(Feedback feedback) {
		this.feedback = feedback;
	}

	public String getReplyContext() {
		return this.replyContext;
	}

	public void setReplyContext(String replyContext) {
		this.replyContext = replyContext;
	}

	public Set getAdmins() {
		return this.admins;
	}

	public void setAdmins(Set admins) {
		this.admins = admins;
	}

}