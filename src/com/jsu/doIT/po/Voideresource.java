package com.jsu.doIT.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Voideresource entity. @author MyEclipse Persistence Tools
 */

public class Voideresource implements java.io.Serializable {

	// Fields

	private Integer resourceId;
	private String resourceUrl;
	private Set voides = new HashSet(0);

	// Constructors

	/** default constructor */
	public Voideresource() {
	}

	/** minimal constructor */
	public Voideresource(String resourceUrl) {
		this.resourceUrl = resourceUrl;
	}

	/** full constructor */
	public Voideresource(String resourceUrl, Set voides) {
		this.resourceUrl = resourceUrl;
		this.voides = voides;
	}

	// Property accessors

	public Integer getResourceId() {
		return this.resourceId;
	}

	public void setResourceId(Integer resourceId) {
		this.resourceId = resourceId;
	}

	public String getResourceUrl() {
		return this.resourceUrl;
	}

	public void setResourceUrl(String resourceUrl) {
		this.resourceUrl = resourceUrl;
	}

	public Set getVoides() {
		return this.voides;
	}

	public void setVoides(Set voides) {
		this.voides = voides;
	}

}