package com.jsu.doIT.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Coursetype entity. @author MyEclipse Persistence Tools
 */

public class Coursetype implements java.io.Serializable {

	// Fields

	private Integer typeId;
	private Coursetype coursetype;
	private String typeName;
	private Set courses = new HashSet(0);
	private Set coursetypes = new HashSet(0);

	// Constructors

	/** default constructor */
	public Coursetype() {
	}

	public Coursetype(Integer typeId) {
		this.typeId = typeId;
	}

	/** minimal constructor */
	public Coursetype(String typeName) {
		this.typeName = typeName;
	}

	/** full constructor */
	public Coursetype(Coursetype coursetype, String typeName, Set courses, Set coursetypes) {
		this.coursetype = coursetype;
		this.typeName = typeName;
		this.courses = courses;
		this.coursetypes = coursetypes;
	}

	// Property accessors

	public Integer getTypeId() {
		return this.typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public Coursetype getCoursetype() {
		return this.coursetype;
	}

	public void setCoursetype(Coursetype coursetype) {
		this.coursetype = coursetype;
	}

	public String getTypeName() {
		return this.typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public Set getCourses() {
		return this.courses;
	}

	public void setCourses(Set courses) {
		this.courses = courses;
	}

	public Set getCoursetypes() {
		return this.coursetypes;
	}

	public void setCoursetypes(Set coursetypes) {
		this.coursetypes = coursetypes;
	}

}