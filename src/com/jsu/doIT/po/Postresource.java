package com.jsu.doIT.po;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Postresource entity. @author MyEclipse Persistence Tools
 */

public class Postresource implements java.io.Serializable {

	// Fields

	private Integer resourceId;
	private Resourcetype resourcetype;
	private Timestamp uploadTime;
	private String resourceUrl;
	private Set userposts = new HashSet(0);

	// Constructors

	/** default constructor */
	public Postresource() {
	}

	/** minimal constructor */
	public Postresource(String resourceUrl) {
		this.resourceUrl = resourceUrl;
	}

	/** full constructor */
	public Postresource(Resourcetype resourcetype, Timestamp uploadTime, String resourceUrl, Set userposts) {
		this.resourcetype = resourcetype;
		this.uploadTime = uploadTime;
		this.resourceUrl = resourceUrl;
		this.userposts = userposts;
	}

	// Property accessors

	public Integer getResourceId() {
		return this.resourceId;
	}

	public void setResourceId(Integer resourceId) {
		this.resourceId = resourceId;
	}

	public Resourcetype getResourcetype() {
		return this.resourcetype;
	}

	public void setResourcetype(Resourcetype resourcetype) {
		this.resourcetype = resourcetype;
	}

	public Timestamp getUploadTime() {
		return this.uploadTime;
	}

	public void setUploadTime(Timestamp uploadTime) {
		this.uploadTime = uploadTime;
	}

	public String getResourceUrl() {
		return this.resourceUrl;
	}

	public void setResourceUrl(String resourceUrl) {
		this.resourceUrl = resourceUrl;
	}

	public Set getUserposts() {
		return this.userposts;
	}

	public void setUserposts(Set userposts) {
		this.userposts = userposts;
	}

}