package com.jsu.doIT.vo;

public class HeadVO implements java.io.Serializable {

	private static final long serialVersionUID = 3094202490495109648L;
	private Integer headId;
	private String headUrl;
	private String times;

	public HeadVO() {
	}

	public HeadVO(String headUrl) {
		this.headUrl = headUrl;
	}

	public Integer getHeadId() {
		return this.headId;
	}

	public void setHeadId(Integer headId) {
		this.headId = headId;
	}

	public String getHeadUrl() {
		return this.headUrl;
	}

	public void setHeadUrl(String headUrl) {
		this.headUrl = headUrl;
	}

	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

}