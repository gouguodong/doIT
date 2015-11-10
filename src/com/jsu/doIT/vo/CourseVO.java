package com.jsu.doIT.vo;

import org.apache.commons.beanutils.BeanUtils;

import com.jsu.doIT.po.Course;
import com.jsu.doIT.utils.converter.DateConvert;

public class CourseVO implements java.io.Serializable {

	private static final long serialVersionUID = 5976326546703341449L;

	private Integer courseId;
	private String courseName;
	private String courseTime;
	private String courseIndex;
	private String courseInfo;
	private String courseAd;
	private Integer studyNumber;
	private String courseLevel;
	private String updateTime;
	private String updateTo;

	public CourseVO() {
	}

	public CourseVO(String courseName, String courseTime) {
		this.courseName = courseName;
		this.courseTime = courseTime;
	}

	public CourseVO(String courseName, String courseTime, String courseIndex, String courseInfo, Integer studyNumber,
			String courseLevel) {
		this.courseName = courseName;
		this.courseTime = courseTime;
		this.courseIndex = courseIndex;
		this.courseInfo = courseInfo;
		this.studyNumber = studyNumber;
		this.courseLevel = courseLevel;
	}

	public Integer getCourseId() {
		return this.courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return this.courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
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

	public String getCourseAd() {
		return courseAd;
	}

	public void setCourseAd(String courseAd) {
		this.courseAd = courseAd;
	}

	public String getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	public String getUpdateTo() {
		return updateTo;
	}

	public void setUpdateTo(String updateTo) {
		this.updateTo = updateTo;
	}

	public void copy(CourseVO courseVO, Course course) {
		try {
			BeanUtils.copyProperties(courseVO, course);
			courseVO.setUpdateTime(DateConvert.datetoString(course.getUpdateTime()));// 日期转换
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}

}