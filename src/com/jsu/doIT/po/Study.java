package com.jsu.doIT.po;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Study entity. @author MyEclipse Persistence Tools
 */

public class Study implements java.io.Serializable {

	// Fields

	private Integer studyId;
	private User user;
	private Date studyDate;
	private Integer studyTime;
	private Set usercourses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Study() {
	}

	public Study(Integer studyId) {
		this.studyId = studyId;
	}

	/** full constructor */
	public Study(User user, Date studyDate, Integer studyTime, Set usercourses) {
		this.user = user;
		this.studyDate = studyDate;
		this.studyTime = studyTime;
		this.usercourses = usercourses;
	}

	// Property accessors

	public Integer getStudyId() {
		return this.studyId;
	}

	public void setStudyId(Integer studyId) {
		this.studyId = studyId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Date getStudyDate() {
		return this.studyDate;
	}

	public void setStudyDate(Date studyDate) {
		this.studyDate = studyDate;
	}

	public Integer getStudyTime() {
		return this.studyTime;
	}

	public void setStudyTime(Integer studyTime) {
		this.studyTime = studyTime;
	}

	public Set getUsercourses() {
		return this.usercourses;
	}

	public void setUsercourses(Set usercourses) {
		this.usercourses = usercourses;
	}

}