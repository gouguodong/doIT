package com.jsu.doIT.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Useroffice entity. @author MyEclipse Persistence Tools
 */

public class Useroffice implements java.io.Serializable {

	// Fields

	private Integer officeId;
	private String officeName;
	private Set userinfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public Useroffice() {
	}

	/** full constructor */
	public Useroffice(String officeName, Set userinfos) {
		this.officeName = officeName;
		this.userinfos = userinfos;
	}

	// Property accessors

	public Integer getOfficeId() {
		return this.officeId;
	}

	public void setOfficeId(Integer officeId) {
		this.officeId = officeId;
	}

	public String getOfficeName() {
		return this.officeName;
	}

	public void setOfficeName(String officeName) {
		this.officeName = officeName;
	}

	public Set getUserinfos() {
		return this.userinfos;
	}

	public void setUserinfos(Set userinfos) {
		this.userinfos = userinfos;
	}

}