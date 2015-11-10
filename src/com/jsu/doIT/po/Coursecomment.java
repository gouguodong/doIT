package com.jsu.doIT.po;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Coursecomment entity. @author MyEclipse Persistence Tools
 */

public class Coursecomment implements java.io.Serializable {

	// Fields

	private Integer commentId;
	private Course course;
	private User user;
	private String commentInfo;
	private Integer agreeNumber;
	private Timestamp date;
	private Set agrees = new HashSet(0);

	public String getAgo() {
		long time = (System.currentTimeMillis() - date.getTime()) / 1000;
		if (time < 60) {
			return time + "秒前";
		}
		time /= 60;
		if (time < 60) {
			return time + "分钟前";
		}
		time /= 60;
		if (time < 24) {
			return time + "小时前";
		}
		
		time /= 24;
		if (time < 30) {
			return time + "天前";
		}
		time /= 30;
		if (time < 12) {
			return time + "月前";
		}
		time /= 12;
		return time + "年前";
	}
	
	// Constructors

	/** default constructor */
	public Coursecomment() {
	}

	public Coursecomment(Integer commentId) {
		this.commentId = commentId;
	}

	/** minimal constructor */
	public Coursecomment(String commentInfo) {
		this.commentInfo = commentInfo;
	}

	/** full constructor */
	public Coursecomment(Course course, User user, String commentInfo, Integer agreeNumber, Timestamp date, Set agrees) {
		this.course = course;
		this.user = user;
		this.commentInfo = commentInfo;
		this.agreeNumber = agreeNumber;
		this.date = date;
		this.agrees = agrees;
	}

	// Property accessors

	public Integer getCommentId() {
		return this.commentId;
	}

	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getCommentInfo() {
		return this.commentInfo;
	}

	public void setCommentInfo(String commentInfo) {
		this.commentInfo = commentInfo;
	}

	public Integer getAgreeNumber() {
		return this.agreeNumber;
	}

	public void setAgreeNumber(Integer agreeNumber) {
		this.agreeNumber = agreeNumber;
	}

	public Timestamp getDate() {
		return this.date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public Set getAgrees() {
		return this.agrees;
	}

	public void setAgrees(Set agrees) {
		this.agrees = agrees;
	}

}