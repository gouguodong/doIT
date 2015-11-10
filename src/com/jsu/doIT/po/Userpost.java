package com.jsu.doIT.po;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Userpost entity. @author MyEclipse Persistence Tools
 */

public class Userpost implements java.io.Serializable {

	// Fields

	private Integer postId;
	private Course course;
	private Postresource postresource;
	private Posttype posttype;
	private User user;
	private Postlabel postlabel;
	private String postTitle;
	private String postUrl;
	private String postContext;
	private Timestamp postTime;
	private Timestamp replyTime;
	private Integer clickNumber;
	private Integer replyNumber;
	private Set replies = new HashSet(0);
	private Set reports = new HashSet(0);

	// Constructors

	/** default constructor */
	public Userpost() {
	}

	public Userpost(Integer postId) {
		this.postId = postId;
	}

	/** minimal constructor */
	public Userpost(String postTitle, String postContext, Timestamp postTime) {
		this.postTitle = postTitle;
		this.postContext = postContext;
		this.postTime = postTime;
	}

	/** full constructor */
	public Userpost(Course course, Postresource postresource, Posttype posttype, User user, Postlabel postlabel,
			String postTitle, String postUrl, String postContext, Timestamp postTime, Timestamp replyTime, Integer clickNumber,
			Integer replyNumber, Set replies, Set reports) {
		this.course = course;
		this.postresource = postresource;
		this.posttype = posttype;
		this.user = user;
		this.postlabel = postlabel;
		this.postTitle = postTitle;
		this.postUrl = postUrl;
		this.postContext = postContext;
		this.postTime = postTime;
		this.replyTime = replyTime;
		this.clickNumber = clickNumber;
		this.replyNumber = replyNumber;
		this.replies = replies;
		this.reports = reports;
	}

	// Property accessors

	public Integer getPostId() {
		return this.postId;
	}

	public void setPostId(Integer postId) {
		this.postId = postId;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Postresource getPostresource() {
		return this.postresource;
	}

	public void setPostresource(Postresource postresource) {
		this.postresource = postresource;
	}

	public Posttype getPosttype() {
		return this.posttype;
	}

	public void setPosttype(Posttype posttype) {
		this.posttype = posttype;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Postlabel getPostlabel() {
		return this.postlabel;
	}

	public void setPostlabel(Postlabel postlabel) {
		this.postlabel = postlabel;
	}

	public String getPostTitle() {
		return this.postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getPostUrl() {
		return this.postUrl;
	}

	public void setPostUrl(String postUrl) {
		this.postUrl = postUrl;
	}

	public String getPostContext() {
		return this.postContext;
	}

	public void setPostContext(String postContext) {
		this.postContext = postContext;
	}

	public Timestamp getPostTime() {
		return this.postTime;
	}

	public void setPostTime(Timestamp postTime) {
		this.postTime = postTime;
	}

	public Timestamp getReplyTime() {
		return this.replyTime;
	}

	public void setReplyTime(Timestamp replyTime) {
		this.replyTime = replyTime;
	}

	public Integer getClickNumber() {
		return this.clickNumber;
	}

	public void setClickNumber(Integer clickNumber) {
		this.clickNumber = clickNumber;
	}

	public Integer getReplyNumber() {
		return this.replyNumber;
	}

	public void setReplyNumber(Integer replyNumber) {
		this.replyNumber = replyNumber;
	}

	public Set getReplies() {
		return this.replies;
	}

	public void setReplies(Set replies) {
		this.replies = replies;
	}

	public Set getReports() {
		return this.reports;
	}

	public void setReports(Set reports) {
		this.reports = reports;
	}

}