package com.jsu.doIT.vo;

public class UsergroupVO implements java.io.Serializable {

	private static final long serialVersionUID = -3088292267228638822L;

	private Integer groupId;
	private String groupName;
	private Integer friendNumber;

	public UsergroupVO() {
	}

	public UsergroupVO(String groupName) {
		this.groupName = groupName;
	}

	public UsergroupVO(String groupName, Integer friendNumber) {
		this.groupName = groupName;
		this.friendNumber = friendNumber;
	}

	public Integer getGroupId() {
		return this.groupId;
	}

	public void setGroupId(Integer groupId) {
		this.groupId = groupId;
	}

	public String getGroupName() {
		return this.groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public Integer getFriendNumber() {
		return this.friendNumber;
	}

	public void setFriendNumber(Integer friendNumber) {
		this.friendNumber = friendNumber;
	}

}