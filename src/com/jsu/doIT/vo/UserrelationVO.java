package com.jsu.doIT.vo;

public class UserrelationVO implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	private Integer relationId;
	private UsergroupVO usergroupVO;
	private UserVO userA;
	private UserVO userB;
	private String userName; // 别名
	private String times;

	public UserrelationVO() {
	}

	public UserrelationVO(String userName) {
		this.userName = userName;
	}

	public Integer getRelationId() {
		return this.relationId;
	}

	public void setRelationId(Integer relationId) {
		this.relationId = relationId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public UsergroupVO getUsergroupVO() {
		return usergroupVO;
	}

	public void setUsergroupVO(UsergroupVO usergroupVO) {
		this.usergroupVO = usergroupVO;
	}

	public UserVO getUserA() {
		return userA;
	}

	public void setUserA(UserVO userA) {
		this.userA = userA;
	}

	public UserVO getUserB() {
		return userB;
	}

	public void setUserB(UserVO userB) {
		this.userB = userB;
	}

	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

}