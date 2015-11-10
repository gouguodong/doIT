package com.jsu.doIT.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Usergroup entity. @author MyEclipse Persistence Tools
 */

public class Usergroup implements java.io.Serializable {

	// Fields

	private Integer groupId;
	private String groupName;
	private Integer friendNumber;
	private Set userinfos = new HashSet(0);
	private Set userrelations = new HashSet(0);

	// Constructors

	/** default constructor */
	public Usergroup() {
	}

	/** minimal constructor */
	public Usergroup(String groupName) {
		this.groupName = groupName;
	}

	/** full constructor */
	public Usergroup(String groupName, Integer friendNumber, Set userinfos, Set userrelations) {
		this.groupName = groupName;
		this.friendNumber = friendNumber;
		this.userinfos = userinfos;
		this.userrelations = userrelations;
	}

	// Property accessors

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

	public Set getUserinfos() {
		return this.userinfos;
	}

	public void setUserinfos(Set userinfos) {
		this.userinfos = userinfos;
	}

	public Set getUserrelations() {
		return this.userrelations;
	}

	public void setUserrelations(Set userrelations) {
		this.userrelations = userrelations;
	}

}