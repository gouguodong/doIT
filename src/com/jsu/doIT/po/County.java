package com.jsu.doIT.po;

import java.util.HashSet;
import java.util.Set;

/**
 * County entity. @author MyEclipse Persistence Tools
 */

public class County implements java.io.Serializable {

	// Fields

	private Integer countyId;
	private City city;
	private String countyName;
	private Set userinfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public County() {
	}

	/** minimal constructor */
	public County(String countyName) {
		this.countyName = countyName;
	}

	/** full constructor */
	public County(City city, String countyName, Set userinfos) {
		this.city = city;
		this.countyName = countyName;
		this.userinfos = userinfos;
	}

	// Property accessors

	public Integer getCountyId() {
		return this.countyId;
	}

	public void setCountyId(Integer countyId) {
		this.countyId = countyId;
	}

	public City getCity() {
		return this.city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public String getCountyName() {
		return this.countyName;
	}

	public void setCountyName(String countyName) {
		this.countyName = countyName;
	}

	public Set getUserinfos() {
		return this.userinfos;
	}

	public void setUserinfos(Set userinfos) {
		this.userinfos = userinfos;
	}

}