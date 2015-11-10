package com.jsu.doIT.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Posttype entity. @author MyEclipse Persistence Tools
 */

public class Posttype implements java.io.Serializable {

	// Fields

	private Integer typeId;
	private String typeName;
	private String typeDesc;
	private Set userposts = new HashSet(0);

	// Constructors

	/** default constructor */
	public Posttype() {
	}

	public Posttype(Integer typeId) {
		this.typeId = typeId;
	}

	/** minimal constructor */
	public Posttype(String typeName) {
		this.typeName = typeName;
	}

	/** full constructor */
	public Posttype(String typeName, String typeDesc, Set userposts) {
		this.typeName = typeName;
		this.typeDesc = typeDesc;
		this.userposts = userposts;
	}

	// Property accessors

	public Integer getTypeId() {
		return this.typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return this.typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getTypeDesc() {
		return this.typeDesc;
	}

	public void setTypeDesc(String typeDesc) {
		this.typeDesc = typeDesc;
	}

	public Set getUserposts() {
		return this.userposts;
	}

	public void setUserposts(Set userposts) {
		this.userposts = userposts;
	}

}