package com.jsu.doIT.vo;

import java.util.Date;

public class PostresourceVO implements java.io.Serializable {

	private static final long serialVersionUID = -2878088244434386798L;

	private Integer resourceId;
	private Date uploadTime;
	private String resourceUrl;

	public PostresourceVO() {
	}

	public PostresourceVO(String resourceUrl) {
		this.resourceUrl = resourceUrl;
	}

	public PostresourceVO(Date uploadTime, String resourceUrl) {
		this.uploadTime = uploadTime;
		this.resourceUrl = resourceUrl;
	}

	public Integer getResourceId() {
		return this.resourceId;
	}

	public void setResourceId(Integer resourceId) {
		this.resourceId = resourceId;
	}

	public Date getUploadTime() {
		return this.uploadTime;
	}

	public void setUploadTime(Date uploadTime) {
		this.uploadTime = uploadTime;
	}

	public String getResourceUrl() {
		return this.resourceUrl;
	}

	public void setResourceUrl(String resourceUrl) {
		this.resourceUrl = resourceUrl;
	}

}