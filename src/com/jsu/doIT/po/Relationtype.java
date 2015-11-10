package com.jsu.doIT.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Relationtype entity. @author MyEclipse Persistence Tools
 */

public class Relationtype implements java.io.Serializable {

	// Fields

	private Integer typeId;
	private String typeName;
	private Set usercourses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Relationtype() {
	}

	/** minimal constructor */
	public Relationtype(String typeName) {
		this.typeName = typeName;
	}

	/** full constructor */
	public Relationtype(String typeName, Set usercourses) {
		this.typeName = typeName;
		this.usercourses = usercourses;
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

	public Set getUsercourses() {
		return this.usercourses;
	}

	public void setUsercourses(Set usercourses) {
		this.usercourses = usercourses;
	}

}