package com.jsu.doIT.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Resourcetype entity. @author MyEclipse Persistence Tools
 */

public class Resourcetype implements java.io.Serializable {

	// Fields

	private Integer typeId;
	private String typeName;
	private String typeDesc;
	private Set postresources = new HashSet(0);

	// Constructors

	/** default constructor */
	public Resourcetype() {
	}
	

	public Resourcetype(Integer typeId) {
		this.typeId = typeId;
	}


	/** minimal constructor */
	public Resourcetype(String typeName) {
		this.typeName = typeName;
	}

	/** full constructor */
	public Resourcetype(String typeName, String typeDesc, Set postresources) {
		this.typeName = typeName;
		this.typeDesc = typeDesc;
		this.postresources = postresources;
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

	public Set getPostresources() {
		return this.postresources;
	}

	public void setPostresources(Set postresources) {
		this.postresources = postresources;
	}

}