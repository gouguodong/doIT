package com.jsu.doIT.po;

import java.sql.Timestamp;

/**
 * Userrelation entity. @author MyEclipse Persistence Tools
 */

public class Userrelation implements java.io.Serializable {

	// Fields

	private Integer relationId;
	private Usergroup usergroup;
	private User userByUserIdA;
	private User userByUserIdB;
	private String userName;
	private Timestamp relationTime;

	// Constructors

	/** default constructor */
	public Userrelation() {
	}

	/** full constructor */
	public Userrelation(Usergroup usergroup, User userByUserIdA, User userByUserIdB, String userName, Timestamp relationTime) {
		this.usergroup = usergroup;
		this.userByUserIdA = userByUserIdA;
		this.userByUserIdB = userByUserIdB;
		this.userName = userName;
		this.relationTime = relationTime;
	}

	// Property accessors

	public Integer getRelationId() {
		return this.relationId;
	}

	public void setRelationId(Integer relationId) {
		this.relationId = relationId;
	}

	public Usergroup getUsergroup() {
		return this.usergroup;
	}

	public void setUsergroup(Usergroup usergroup) {
		this.usergroup = usergroup;
	}

	public User getUserByUserIdA() {
		return this.userByUserIdA;
	}

	public void setUserByUserIdA(User userByUserIdA) {
		this.userByUserIdA = userByUserIdA;
	}

	public User getUserByUserIdB() {
		return this.userByUserIdB;
	}

	public void setUserByUserIdB(User userByUserIdB) {
		this.userByUserIdB = userByUserIdB;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Timestamp getRelationTime() {
		return this.relationTime;
	}

	public void setRelationTime(Timestamp relationTime) {
		this.relationTime = relationTime;
	}

}