package com.jsu.doIT.po;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Teacher entity. @author MyEclipse Persistence Tools
 */

public class Teacher implements java.io.Serializable {

	// Fields

	private Integer teacherId;
	private String teacherName;
	private String teacherPwd;
	private String realName;
	private Timestamp registTime;
	private Integer courseNumber;
	private String teacherInfo;
	private Set courses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Teacher() {
	}

	public Teacher(Integer teacherId) {
		this.teacherId = teacherId;
	}

	/** minimal constructor */
	public Teacher(String teacherName, String teacherPwd) {
		this.teacherName = teacherName;
		this.teacherPwd = teacherPwd;
	}

	/** full constructor */
	public Teacher(String teacherName, String teacherPwd, String realName, Timestamp registTime, Integer courseNumber,
			String teacherInfo, Set courses) {
		this.teacherName = teacherName;
		this.teacherPwd = teacherPwd;
		this.realName = realName;
		this.registTime = registTime;
		this.courseNumber = courseNumber;
		this.teacherInfo = teacherInfo;
		this.courses = courses;
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

	public Timestamp getRegistTime() {
		return this.registTime;
	}

	public void setRegistTime(Timestamp registTime) {
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

	public Set getCourses() {
		return this.courses;
	}

	public void setCourses(Set courses) {
		this.courses = courses;
	}

}