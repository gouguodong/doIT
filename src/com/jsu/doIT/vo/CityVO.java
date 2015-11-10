package com.jsu.doIT.vo;


/**
 * City的VO对象
 * 
 * @author hadoop
 * 
 */

public class CityVO implements java.io.Serializable {

	private static final long serialVersionUID = 7570401934011997442L;

	private Integer cityId;
	private String cityName;

	public CityVO() {
	}

	public CityVO(String cityName) {
		this.cityName = cityName;
	}

	public Integer getCityId() {
		return cityId;
	}

	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

}