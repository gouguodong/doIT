package com.jsu.doIT.vo;


public class SectionVO implements java.io.Serializable {

	private static final long serialVersionUID = 2997907586435891412L;

	private Integer sectionId;
	private String sectionName;

	public SectionVO() {
	}

	public SectionVO(String sectionName) {
		this.sectionName = sectionName;
	}

	public Integer getSectionId() {
		return this.sectionId;
	}

	public void setSectionId(Integer sectionId) {
		this.sectionId = sectionId;
	}

	public String getSectionName() {
		return this.sectionName;
	}

	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}

}