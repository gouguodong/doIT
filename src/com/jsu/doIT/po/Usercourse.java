package com.jsu.doIT.po;

/**
 * Usercourse entity. @author MyEclipse Persistence Tools
 */

public class Usercourse implements java.io.Serializable {

	// Fields

	private Integer relationId;
	private Voide voide;
	private Course course;
	private Study study;
	private Relationtype relationtype;
	private User user;
	private String studyTime;

	public Integer getScale() {
		int iStudyTime = Integer.parseInt(studyTime.substring(0, studyTime.indexOf("小时"))) * 60 + Integer.parseInt(studyTime.substring(studyTime.indexOf("小时") + 2, studyTime.length() - 2));
		int courseTime = Integer.parseInt(course.getCourseTime().substring(0, course.getCourseTime().indexOf("小时"))) * 60 + Integer.parseInt(course.getCourseTime().substring(course.getCourseTime().indexOf("小时") + 2, course.getCourseTime().length() - 2));
		return iStudyTime * 100 / courseTime;
	}
	
	// Constructors

	/** default constructor */
	public Usercourse() {
	}

	public Usercourse(Integer relationId) {
		this.relationId = relationId;
	}

	public Integer getHour() {
		return Integer.parseInt(studyTime.substring(0, studyTime.indexOf("小时")));
	}

	public Integer getMinute() {
		return Integer.parseInt(studyTime.substring(studyTime.indexOf("小时") + 2, studyTime.indexOf("分钟")));
	}

	/** full constructor */
	public Usercourse(Voide voide, Course course, Study study, Relationtype relationtype, User user, String studyTime) {
		this.voide = voide;
		this.course = course;
		this.study = study;
		this.relationtype = relationtype;
		this.user = user;
		this.studyTime = studyTime;
	}

	// Property accessors

	public Integer getRelationId() {
		return this.relationId;
	}

	public void setRelationId(Integer relationId) {
		this.relationId = relationId;
	}

	public Voide getVoide() {
		return this.voide;
	}

	public void setVoide(Voide voide) {
		this.voide = voide;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Study getStudy() {
		return this.study;
	}

	public void setStudy(Study study) {
		this.study = study;
	}

	public Relationtype getRelationtype() {
		return this.relationtype;
	}

	public void setRelationtype(Relationtype relationtype) {
		this.relationtype = relationtype;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getStudyTime() {
		return this.studyTime;
	}

	public void setStudyTime(String studyTime) {
		this.studyTime = studyTime;
	}

}