package com.jsu.doIT.vo;

public class CourselabelVO implements java.io.Serializable {

	private static final long serialVersionUID = -5527213901093485556L;
	private Integer labelId;
	private String labelName;
	private Integer labelValue;

	public CourselabelVO() {
	}

	public CourselabelVO(String labelName) {
		this.labelName = labelName;
	}

	public CourselabelVO(String labelName, Integer labelValue) {
		this.labelName = labelName;
		this.labelValue = labelValue;
	}

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

	public Integer getLabelValue() {
		return this.labelValue;
	}

	public void setLabelValue(Integer labelValue) {
		this.labelValue = labelValue;
	}

}