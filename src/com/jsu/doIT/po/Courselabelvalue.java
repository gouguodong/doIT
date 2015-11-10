package com.jsu.doIT.po;

/**
 * Courselabelvalue entity. @author MyEclipse Persistence Tools
 */

public class Courselabelvalue implements java.io.Serializable {

	// Fields

	private Integer valueId;
	private Course course;
	private Courselabel courselabel;
	private Integer number;

	// Constructors

	/** default constructor */
	public Courselabelvalue() {
	}

	/** full constructor */
	public Courselabelvalue(Course course, Courselabel courselabel, Integer number) {
		this.course = course;
		this.courselabel = courselabel;
		this.number = number;
	}

	// Property accessors

	public Integer getValueId() {
		return this.valueId;
	}

	public void setValueId(Integer valueId) {
		this.valueId = valueId;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Courselabel getCourselabel() {
		return this.courselabel;
	}

	public void setCourselabel(Courselabel courselabel) {
		this.courselabel = courselabel;
	}

	public Integer getNumber() {
		return this.number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

}