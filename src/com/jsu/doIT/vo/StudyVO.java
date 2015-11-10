package com.jsu.doIT.vo;

import java.util.HashSet;
import java.util.Set;

public class StudyVO implements java.io.Serializable {

	private static final long serialVersionUID = 7348346021714541368L;

	private Integer studyId;
	private String studyDate;
	private Integer studyTime;
	private Set<UsercourseVO> usercourseVOs = new HashSet<UsercourseVO>();

	public StudyVO() {
	}

	public StudyVO(String studyDate, Integer studyTime) {
		this.studyDate = studyDate;
		this.studyTime = studyTime;
	}

	public Set<UsercourseVO> getUsercourseVOs() {
		return usercourseVOs;
	}

	public void setUsercourseVOs(Set<UsercourseVO> usercourseVOs) {
		this.usercourseVOs = usercourseVOs;
	}

	public Integer getStudyId() {
		return this.studyId;
	}

	public void setStudyId(Integer studyId) {
		this.studyId = studyId;
	}

	public String getStudyDate() {
		return studyDate;
	}

	public void setStudyDate(String studyDate) {
		this.studyDate = studyDate;
	}

	public Integer getStudyTime() {
		return this.studyTime;
	}

	public void setStudyTime(Integer studyTime) {
		this.studyTime = studyTime;
	}

}