package com.jsu.doIT.po;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Admin entity. @author MyEclipse Persistence Tools
 */

public class Admin implements java.io.Serializable {

	// Fields

	private Integer adminId;
	private Replyfeed replyfeed;
	private String adminName;
	private String adminPwd;
	private String adminHead;
	private Timestamp addTime;
	private Integer feedNumber;
	private Set filters = new HashSet(0);

	// Constructors

	/** default constructor */
	public Admin() {
	}

	/** minimal constructor */
	public Admin(String adminName, String adminPwd) {
		this.adminName = adminName;
		this.adminPwd = adminPwd;
	}

	/** full constructor */
	public Admin(Replyfeed replyfeed, String adminName, String adminPwd, String adminHead, Timestamp addTime, Integer feedNumber,
			Set filters) {
		this.replyfeed = replyfeed;
		this.adminName = adminName;
		this.adminPwd = adminPwd;
		this.adminHead = adminHead;
		this.addTime = addTime;
		this.feedNumber = feedNumber;
		this.filters = filters;
	}

	// Property accessors

	public Integer getAdminId() {
		return this.adminId;
	}

	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}

	public Replyfeed getReplyfeed() {
		return this.replyfeed;
	}

	public void setReplyfeed(Replyfeed replyfeed) {
		this.replyfeed = replyfeed;
	}

	public String getAdminName() {
		return this.adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminPwd() {
		return this.adminPwd;
	}

	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}

	public String getAdminHead() {
		return this.adminHead;
	}

	public void setAdminHead(String adminHead) {
		this.adminHead = adminHead;
	}

	public Timestamp getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Timestamp addTime) {
		this.addTime = addTime;
	}

	public Integer getFeedNumber() {
		return this.feedNumber;
	}

	public void setFeedNumber(Integer feedNumber) {
		this.feedNumber = feedNumber;
	}

	public Set getFilters() {
		return this.filters;
	}

	public void setFilters(Set filters) {
		this.filters = filters;
	}

}