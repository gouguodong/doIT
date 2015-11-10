package com.jsu.doIT.vo;

public class VoideresourceVO implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	private Integer resourceId;
	private String resourceUrl;

	public VoideresourceVO() {
	}

	public VoideresourceVO(String resourceUrl) {
		this.resourceUrl = resourceUrl;
	}

	public VoideresourceVO(Integer resourceId, String resourceUrl) {
		super();
		this.resourceId = resourceId;
		this.resourceUrl = resourceUrl;
	}

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

}