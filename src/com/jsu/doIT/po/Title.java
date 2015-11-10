package com.jsu.doIT.po;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Title entity. @author MyEclipse Persistence Tools
 */

public class Title implements java.io.Serializable {

	// Fields

	private Integer titleId;
	private String titleName;
	private Date addTime;
	private String titleDesc;
	private Set userinfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public Title() {
	}

	/** minimal constructor */
	public Title(String titleName) {
		this.titleName = titleName;
	}

	/** full constructor */
	public Title(String titleName, Date addTime, String titleDesc, Set userinfos) {
		this.titleName = titleName;
		this.addTime = addTime;
		this.titleDesc = titleDesc;
		this.userinfos = userinfos;
	}

	// Property accessors

	public Integer getTitleId() {
		return this.titleId;
	}

	public void setTitleId(Integer titleId) {
		this.titleId = titleId;
	}

	public String getTitleName() {
		return this.titleName;
	}

	public void setTitleName(String titleName) {
		this.titleName = titleName;
	}

	public Date getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public String getTitleDesc() {
		return this.titleDesc;
	}

	public void setTitleDesc(String titleDesc) {
		this.titleDesc = titleDesc;
	}

	public Set getUserinfos() {
		return this.userinfos;
	}

	public void setUserinfos(Set userinfos) {
		this.userinfos = userinfos;
	}

}