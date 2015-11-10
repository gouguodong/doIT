package com.jsu.doIT.po;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Course entity. @author MyEclipse Persistence Tools
 */

public class Course implements java.io.Serializable {

	// Fields

	private Integer courseId;
	private Coursetype coursetype;
	private Teacher teacher;
	private String courseName;
	private String courseAd;
	private Timestamp courseDate;
	private Timestamp updateTime;
	private String courseTime;
	private String courseIndex;
	private String courseInfo;
	private Integer studyNumber;
	private String courseLevel;
	private String updateTo;
	private Set userposts = new HashSet(0);
	private Set sections = new HashSet(0);
	private Set usercourses = new HashSet(0);
	private Set coursecomments = new HashSet(0);
	private Set courselabelvalues = new HashSet(0);

	
	public String getChapters() {
		return sections.size() + "章";
	}
	
	// Constructors

	/** default constructor */
	public Course() {
	}

	public Course(Integer courseId) {
		this.courseId = courseId;
	}

	public Integer getHour() {
		return Integer.parseInt(courseTime.substring(0, courseTime.indexOf("小时")));
	}

	public Integer getMinute() {
		return Integer.parseInt(courseTime.substring(courseTime.indexOf("小时") + 2, courseTime.indexOf("分钟")));
	}

	/** minimal constructor */
	public Course(Coursetype coursetype, String courseName, Timestamp courseDate, String courseTime) {
		this.coursetype = coursetype;
		this.courseName = courseName;
		this.courseDate = courseDate;
		this.courseTime = courseTime;
	}

	/** full constructor */
	public Course(Coursetype coursetype, Teacher teacher, String courseName, String courseAd, Timestamp courseDate,
			Timestamp updateTime, String courseTime, String courseIndex, String courseInfo, Integer studyNumber,
			String courseLevel, String updateTo, Set userposts, Set sections, Set usercourses, Set coursecomments,
			Set courselabelvalues) {
		this.coursetype = coursetype;
		this.teacher = teacher;
		this.courseName = courseName;
		this.courseAd = courseAd;
		this.courseDate = courseDate;
		this.updateTime = updateTime;
		this.courseTime = courseTime;
		this.courseIndex = courseIndex;
		this.courseInfo = courseInfo;
		this.studyNumber = studyNumber;
		this.courseLevel = courseLevel;
		this.updateTo = updateTo;
		this.userposts = userposts;
		this.sections = sections;
		this.usercourses = usercourses;
		this.coursecomments = coursecomments;
		this.courselabelvalues = courselabelvalues;
	}

	// Property accessors

	public Integer getCourseId() {
		return this.courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public Coursetype getCoursetype() {
		return this.coursetype;
	}

	public void setCoursetype(Coursetype coursetype) {
		this.coursetype = coursetype;
	}

	public Teacher getTeacher() {
		return this.teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public String getCourseName() {
		return this.courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCourseAd() {
		return this.courseAd;
	}

	public void setCourseAd(String courseAd) {
		this.courseAd = courseAd;
	}

	public Timestamp getCourseDate() {
		return this.courseDate;
	}

	public void setCourseDate(Timestamp courseDate) {
		this.courseDate = courseDate;
	}

	public Timestamp getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}

	public String getCourseTime() {
		return this.courseTime;
	}

	public void setCourseTime(String courseTime) {
		this.courseTime = courseTime;
	}

	public String getCourseIndex() {
		return this.courseIndex;
	}

	public void setCourseIndex(String courseIndex) {
		this.courseIndex = courseIndex;
	}

	public String getCourseInfo() {
		return this.courseInfo;
	}

	public void setCourseInfo(String courseInfo) {
		this.courseInfo = courseInfo;
	}

	public Integer getStudyNumber() {
		return this.studyNumber;
	}

	public void setStudyNumber(Integer studyNumber) {
		this.studyNumber = studyNumber;
	}

	public String getCourseLevel() {
		return this.courseLevel;
	}

	public void setCourseLevel(String courseLevel) {
		this.courseLevel = courseLevel;
	}

	public String getUpdateTo() {
		return this.updateTo;
	}

	public void setUpdateTo(String updateTo) {
		this.updateTo = updateTo;
	}

	public Set getUserposts() {
		return this.userposts;
	}

	public void setUserposts(Set userposts) {
		this.userposts = userposts;
	}

	public Set getSections() {
		return this.sections;
	}

	public void setSections(Set sections) {
		this.sections = sections;
	}

	public Set getUsercourses() {
		return this.usercourses;
	}

	public void setUsercourses(Set usercourses) {
		this.usercourses = usercourses;
	}

	public Set getCoursecomments() {
		return this.coursecomments;
	}

	public void setCoursecomments(Set coursecomments) {
		this.coursecomments = coursecomments;
	}

	public Set getCourselabelvalues() {
		return this.courselabelvalues;
	}

	public void setCourselabelvalues(Set courselabelvalues) {
		this.courselabelvalues = courselabelvalues;
	}

}