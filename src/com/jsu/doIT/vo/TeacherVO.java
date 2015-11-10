package com.jsu.doIT.vo;

import java.util.Date;

public class TeacherVO implements java.io.Serializable {

	private static final long serialVersionUID = -9128474512070175751L;

	private Integer teacherId;
	private String teacherName;
	private String teacherPwd;
	private String realName;
	private Date registTime;
	private Integer courseNumber;
	private String teacherInfo;

	public TeacherVO() {
	}

	public TeacherVO(String teacherName, String teacherPwd) {
		this.teacherName = teacherName;
		this.teacherPwd = teacherPwd;
	}

	public TeacherVO(String teacherName, String teacherPwd, String realName, Date registTime, Integer courseNumber,
			String teacherInfo) {
		this.teacherName = teacherName;
		this.teacherPwd = teacherPwd;
		this.realName = realName;
		this.registTime = registTime;
		this.courseNumber = courseNumber;
		this.teacherInfo = teacherInfo;
	}

	// Property accessors

	public Integer getTeacherId() {
		return this.teacherId;
	}

	public void setTeacherId(Integer teacherId) {
		this.teacherId = teacherId;
	}

	public String getTeacherName() {
		return this.teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public String getTeacherPwd() {
		return this.teacherPwd;
	}

	public void setTeacherPwd(String teacherPwd) {
		this.teacherPwd = teacherPwd;
	}

	public String getRealName() {
		return this.realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public Date getRegistTime() {
		return this.registTime;
	}

	public void setRegistTime(Date registTime) {
		this.registTime = registTime;
	}

	public Integer getCourseNumber() {
		return this.courseNumber;
	}

	public void setCourseNumber(Integer courseNumber) {
		this.courseNumber = courseNumber;
	}

	public String getTeacherInfo() {
		return this.teacherInfo;
	}

	public void setTeacherInfo(String teacherInfo) {
		this.teacherInfo = teacherInfo;
	}

}