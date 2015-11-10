package com.jsu.doIT.vo;


public class TitleVO implements java.io.Serializable {

	private static final long serialVersionUID = -315553016190431114L;

	private Integer titleId;
	private String titleName;
	private String times;
	private String titleDesc;

	public TitleVO() {
	}

	public TitleVO(String titleName) {
		this.titleName = titleName;
	}

	public Integer getTitleId() {
		return this.titleId;
	}

	public void setTitleId(Integer titleId) {
		this.titleId = titleId;
	}

	public String getTitleName() {
		return this.titleName;
	}

	public void setTitleName(String titleName) {
		this.titleName = titleName;
	}

	public String getTitleDesc() {
		return this.titleDesc;
	}

	public void setTitleDesc(String titleDesc) {
		this.titleDesc = titleDesc;
	}

	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

}