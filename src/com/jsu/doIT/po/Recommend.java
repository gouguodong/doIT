package com.jsu.doIT.po;

/**
 * Recommend entity. @author MyEclipse Persistence Tools
 */

public class Recommend implements java.io.Serializable {

	// Fields

	private Integer recommendId;
	private Integer courseId;
	private Integer userId;
	private Integer labelId;
	private Integer status;

	// Constructors

	/** default constructor */
	public Recommend() {
	}

	/** full constructor */
	public Recommend(Integer courseId, Integer userId, Integer labelId, Integer status) {
		this.courseId = courseId;
		this.userId = userId;
		this.labelId = labelId;
		this.status = status;
	}

	// Property accessors

	public Integer getRecommendId() {
		return this.recommendId;
	}

	public void setRecommendId(Integer recommendId) {
		this.recommendId = recommendId;
	}

	public Integer getCourseId() {
		return this.courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getLabelId() {
		return this.labelId;
	}

	public void setLabelId(Integer labelId) {
		this.labelId = labelId;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}