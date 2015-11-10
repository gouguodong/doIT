package com.jsu.doIT.vo;

public class VoideVO implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer voideId;
	private String voideName;
	private String voideUrl;
	private Integer voideTime;

	public VoideVO() {
	}

	public VoideVO(String voideName, String voideUrl) {
		this.voideName = voideName;
		this.voideUrl = voideUrl;
	}

	public VoideVO(String voideName, String voideUrl, Integer voideTime) {
		this.voideName = voideName;
		this.voideUrl = voideUrl;
		this.voideTime = voideTime;
	}

	public Integer getVoideId() {
		return this.voideId;
	}

	public void setVoideId(Integer voideId) {
		this.voideId = voideId;
	}

	public String getVoideName() {
		return this.voideName;
	}

	public void setVoideName(String voideName) {
		this.voideName = voideName;
	}

	public String getVoideUrl() {
		return this.voideUrl;
	}

	public void setVoideUrl(String voideUrl) {
		this.voideUrl = voideUrl;
	}

	public Integer getVoideTime() {
		return this.voideTime;
	}

	public void setVoideTime(Integer voideTime) {
		this.voideTime = voideTime;
	}

}