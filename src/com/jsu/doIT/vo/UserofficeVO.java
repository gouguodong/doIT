package com.jsu.doIT.vo;

public class UserofficeVO implements java.io.Serializable {

	private static final long serialVersionUID = -419682121045928930L;

	private Integer officeId;
	private String officeName;

	public UserofficeVO() {
	}

	public UserofficeVO(String officeName) {
		this.officeName = officeName;
	}

	public Integer getOfficeId() {
		return this.officeId;
	}

	public void setOfficeId(Integer officeId) {
		this.officeId = officeId;
	}

	public String getOfficeName() {
		return this.officeName;
	}

	public void setOfficeName(String officeName) {
		this.officeName = officeName;
	}

}