package com.jsu.doIT.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Courselabel entity. @author MyEclipse Persistence Tools
 */

public class Courselabel implements java.io.Serializable {

	// Fields

	private Integer labelId;
	private String labelName;
	private Integer labelValue;
	private Set courselabelvalues = new HashSet(0);

	// Constructors

	/** default constructor */
	public Courselabel() {
	}

	public Courselabel(Integer labelId) {
		this.labelId = labelId;
	}

	/** minimal constructor */
	public Courselabel(String labelName) {
		this.labelName = labelName;
	}

	/** full constructor */
	public Courselabel(String labelName, Integer labelValue, Set courselabelvalues) {
		this.labelName = labelName;
		this.labelValue = labelValue;
		this.courselabelvalues = courselabelvalues;
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

	public Set getCourselabelvalues() {
		return this.courselabelvalues;
	}

	public void setCourselabelvalues(Set courselabelvalues) {
		this.courselabelvalues = courselabelvalues;
	}

}