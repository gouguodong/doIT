package com.jsu.doIT.vo;

public class CoursecommentVO implements java.io.Serializable {

	private static final long serialVersionUID = 1477008165249891981L;

	private Integer commentId;
	private String commentInfo;
	private Integer agreeNumber;

	public CoursecommentVO() {
	}

	public CoursecommentVO(String commentInfo) {
		this.commentInfo = commentInfo;
	}

	public CoursecommentVO(String commentInfo, Integer agreeNumber) {
		this.commentInfo = commentInfo;
		this.agreeNumber = agreeNumber;
	}

	public Integer getCommentId() {
		return this.commentId;
	}

	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
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

}