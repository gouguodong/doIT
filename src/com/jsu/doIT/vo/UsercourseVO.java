package com.jsu.doIT.vo;

public class UsercourseVO implements java.io.Serializable {

	private static final long serialVersionUID = -3285137961620449704L;

	private Integer relationId;
	private String studyTime;
	private Integer voideId;
	private CourseVO courseVO;
	private String learnpercent;

	public UsercourseVO() {
	}

	public Integer getRelationId() {
		return this.relationId;
	}

	public void setRelationId(Integer relationId) {
		this.relationId = relationId;
	}

	public String getStudyTime() {
		return studyTime;
	}

	public void setStudyTime(String studyTime) {
		this.studyTime = studyTime;
	}

	public CourseVO getCourseVO() {
		return courseVO;
	}

	public void setCourseVO(CourseVO courseVO) {
		this.courseVO = courseVO;
	}

	public String getLearnpercent() {
		return learnpercent;
	}

	public void setLearnpercent(String learnpercent) {
		this.learnpercent = learnpercent;
	}

	public Integer getVoideId() {
		return voideId;
	}

	public void setVoideId(Integer voideId) {
		this.voideId = voideId;
	}

}