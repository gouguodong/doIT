package com.jsu.doIT.po;

import java.sql.Timestamp;

/**
 * Head entity. @author MyEclipse Persistence Tools
 */

public class Head implements java.io.Serializable {

	// Fields

	private Integer headId;
	private String headUrl;
	private Timestamp addTime;

	// Constructors

	/** default constructor */
	public Head() {
	}

	/** minimal constructor */
	public Head(String headUrl) {
		this.headUrl = headUrl;
	}

	/** full constructor */
	public Head(String headUrl, Timestamp addTime) {
		this.headUrl = headUrl;
		this.addTime = addTime;
	}

	// Property accessors

	public Integer getHeadId() {
		return this.headId;
	}

	public void setHeadId(Integer headId) {
		this.headId = headId;
	}

	public String getHeadUrl() {
		return this.headUrl;
	}

	public void setHeadUrl(String headUrl) {
		this.headUrl = headUrl;
	}

	public Timestamp getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Timestamp addTime) {
		this.addTime = addTime;
	}

}