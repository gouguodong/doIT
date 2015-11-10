package com.jsu.doIT.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Codetype entity. @author MyEclipse Persistence Tools
 */

public class Codetype implements java.io.Serializable {

	// Fields

	private Integer typeId;
	private String typeName;
	private String typeDesc;
	private Set usercodes = new HashSet(0);

	// Constructors

	/** default constructor */
	public Codetype() {
	}

	/** minimal constructor */
	public Codetype(String typeName) {
		this.typeName = typeName;
	}

	/** full constructor */
	public Codetype(String typeName, String typeDesc, Set usercodes) {
		this.typeName = typeName;
		this.typeDesc = typeDesc;
		this.usercodes = usercodes;
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

	public Set getUsercodes() {
		return this.usercodes;
	}

	public void setUsercodes(Set usercodes) {
		this.usercodes = usercodes;
	}

}