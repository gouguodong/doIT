package com.jsu.doIT.vo;

public class ProvinceVO implements java.io.Serializable {

	private static final long serialVersionUID = -2043239431301689508L;

	private Integer provinceId;
	private String provinceName;

	public ProvinceVO() {
	}

	public ProvinceVO(String provinceName) {
		this.provinceName = provinceName;
	}

	public Integer getProvinceId() {
		return this.provinceId;
	}

	public void setProvinceId(Integer provinceId) {
		this.provinceId = provinceId;
	}

	public String getProvinceName() {
		return this.provinceName;
	}

	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}

}