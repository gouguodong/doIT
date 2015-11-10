package com.jsu.doIT.po;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Section entity. @author MyEclipse Persistence Tools
 */

public class Section implements java.io.Serializable {

	// Fields

	private Integer sectionId;
	private Course course;
	private String sectionName;
	private String sectionDesc;
	private Timestamp openTime;
	private Integer sectionCode;
	private Set voides = new HashSet(0);

	// Constructors

	/** default constructor */
	public Section() {
	}

	public Section(Integer sectionId) {
		this.sectionId = sectionId;
	}

	/** minimal constructor */
	public Section(String sectionName) {
		this.sectionName = sectionName;
	}

	/** full constructor */
	public Section(Course course, String sectionName, String sectionDesc, Timestamp openTime, Integer sectionCode, Set voides) {
		this.course = course;
		this.sectionName = sectionName;
		this.sectionDesc = sectionDesc;
		this.openTime = openTime;
		this.sectionCode = sectionCode;
		this.voides = voides;
	}

	// Property accessors

	public Integer getSectionId() {
		return this.sectionId;
	}

	public void setSectionId(Integer sectionId) {
		this.sectionId = sectionId;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public String getSectionName() {
		return this.sectionName;
	}

	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}

	public String getSectionDesc() {
		return this.sectionDesc;
	}

	public void setSectionDesc(String sectionDesc) {
		this.sectionDesc = sectionDesc;
	}

	public Timestamp getOpenTime() {
		return this.openTime;
	}

	public void setOpenTime(Timestamp openTime) {
		this.openTime = openTime;
	}

	public Integer getSectionCode() {
		return this.sectionCode;
	}

	public void setSectionCode(Integer sectionCode) {
		this.sectionCode = sectionCode;
	}

	public Set getVoides() {
		return this.voides;
	}

	public void setVoides(Set voides) {
		this.voides = voides;
	}

}