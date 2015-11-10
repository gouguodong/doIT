package com.jsu.doIT.vo;

/**
 * Agree的VO对象
 * 
 * @author hadoop
 * 
 */

public class AgreeVO implements java.io.Serializable {

	private static final long serialVersionUID = -8416172830077813801L;

	private Integer agreeId;
	private CoursecommentVO coursecommentVO;
	private UserVO userVO;

	public AgreeVO() {
	}

	public AgreeVO(CoursecommentVO coursecommentVO, UserVO userVO) {
		this.coursecommentVO = coursecommentVO;
		this.userVO = userVO;
	}

	public Integer getAgreeId() {
		return this.agreeId;
	}

	public void setAgreeId(Integer agreeId) {
		this.agreeId = agreeId;
	}

	public CoursecommentVO getCoursecommentVO() {
		return this.coursecommentVO;
	}

	public void setCoursecommentVO(CoursecommentVO coursecommentVO) {
		this.coursecommentVO = coursecommentVO;
	}

	public UserVO getUserVO() {
		return this.userVO;
	}

	public void setUserVO(UserVO userVO) {
		this.userVO = userVO;
	}

}