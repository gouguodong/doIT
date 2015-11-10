package com.jsu.doIT.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Postlabel entity. @author MyEclipse Persistence Tools
 */

public class Postlabel implements java.io.Serializable {

	// Fields

	private Integer labelId;
	private String labelName;
	private Set userposts = new HashSet(0);

	// Constructors

	/** default constructor */
	public Postlabel() {
	}

	public Postlabel(Integer labelId) {
		this.labelId = labelId;
	}

	/** minimal constructor */
	public Postlabel(String labelName) {
		this.labelName = labelName;
	}

	/** full constructor */
	public Postlabel(String labelName, Set userposts) {
		this.labelName = labelName;
		this.userposts = userposts;
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

	public Set getUserposts() {
		return this.userposts;
	}

	public void setUserposts(Set userposts) {
		this.userposts = userposts;
	}

}