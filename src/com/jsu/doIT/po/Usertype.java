package com.jsu.doIT.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Usertype entity. @author MyEclipse Persistence Tools
 */

public class Usertype implements java.io.Serializable {

	// Fields

	private Integer typeId;
	private String typeName;
	private Set userinfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public Usertype() {
	}

	/** full constructor */
	public Usertype(String typeName, Set userinfos) {
		this.typeName = typeName;
		this.userinfos = userinfos;
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

	public Set getUserinfos() {
		return this.userinfos;
	}

	public void setUserinfos(Set userinfos) {
		this.userinfos = userinfos;
	}

}