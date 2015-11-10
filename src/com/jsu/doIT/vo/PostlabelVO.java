package com.jsu.doIT.vo;

public class PostlabelVO implements java.io.Serializable {

	private static final long serialVersionUID = 2760261783392307178L;

	private Integer labelId;
	private String labelName;

	public PostlabelVO() {
	}

	public PostlabelVO(String labelName) {
		this.labelName = labelName;
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

}