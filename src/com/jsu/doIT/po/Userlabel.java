package com.jsu.doIT.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Userlabel entity. @author MyEclipse Persistence Tools
 */

public class Userlabel implements java.io.Serializable {

	// Fields

	private Integer labelId;
	private String labelName;
	private Integer labelValue;
	private Set userinfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public Userlabel() {
	}

	/** minimal constructor */
	public Userlabel(String labelName) {
		this.labelName = labelName;
	}

	/** full constructor */
	public Userlabel(String labelName, Integer labelValue, Set userinfos) {
		this.labelName = labelName;
		this.labelValue = labelValue;
		this.userinfos = userinfos;
	}

	// Property accessors

	public Integer getLabelId() {
		return this.labelId;
	}

	public void setLabelId(Integer labelId) {
		this.labelId = labelId;
	}

	public String getLabelName() {
		return this.labelName;
	}

	public void setLabelName(String labelName) {
		this.labelName = labelName;
	}

	public Integer getLabelValue() {
		return this.labelValue;
	}

	public void setLabelValue(Integer labelValue) {
		this.labelValue = labelValue;
	}

	public Set getUserinfos() {
		return this.userinfos;
	}

	public void setUserinfos(Set userinfos) {
		this.userinfos = userinfos;
	}

}