package com.jsu.doIT.vo;

public class CountyVO implements java.io.Serializable {

	private static final long serialVersionUID = 3870184760871446637L;

	private Integer countyId;
	private String countyName;

	public CountyVO() {
	}

	public CountyVO(String countyName) {
		this.countyName = countyName;
	}

	public Integer getCountyId() {
		return this.countyId;
	}

	public void setCountyId(Integer countyId) {
		this.countyId = countyId;
	}

	public String getCountyName() {
		return this.countyName;
	}

	public void setCountyName(String countyName) {
		this.countyName = countyName;
	}

}