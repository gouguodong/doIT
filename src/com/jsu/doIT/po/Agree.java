package com.jsu.doIT.po;

/**
 * Agree entity. @author MyEclipse Persistence Tools
 */

public class Agree implements java.io.Serializable {

	// Fields

	private Integer agreeId;
	private Coursecomment coursecomment;
	private User user;

	// Constructors

	/** default constructor */
	public Agree() {
	}

	/** full constructor */
	public Agree(Coursecomment coursecomment, User user) {
		this.coursecomment = coursecomment;
		this.user = user;
	}

	// Property accessors

	public Integer getAgreeId() {
		return this.agreeId;
	}

	public void setAgreeId(Integer agreeId) {
		this.agreeId = agreeId;
	}

	public Coursecomment getCoursecomment() {
		return this.coursecomment;
	}

	public void setCoursecomment(Coursecomment coursecomment) {
		this.coursecomment = coursecomment;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}