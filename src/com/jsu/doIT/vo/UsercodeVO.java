package com.jsu.doIT.vo;


public class UsercodeVO implements java.io.Serializable {

	private static final long serialVersionUID = -4921095583178981789L;

	private Integer codeId;
	private String codeContext;
	private String saveTime;
	private String codeType;

	public UsercodeVO() {
	}

	public UsercodeVO(String codeContext) {
		this.codeContext = codeContext;
	}

	/** full constructor */
	public UsercodeVO(String codeContext, String saveTime) {
		this.codeContext = codeContext;
		this.saveTime = saveTime;
	}

	public Integer getCodeId() {
		return this.codeId;
	}

	public void setCodeId(Integer codeId) {
		this.codeId = codeId;
	}

	public String getCodeContext() {
		return this.codeContext;
	}

	public void setCodeContext(String codeContext) {
		this.codeContext = codeContext;
	}

	public String getSaveTime() {
		return this.saveTime;
	}

	public void setSaveTime(String saveTime) {
		this.saveTime = saveTime;
	}

	public String getCodeType() {
		return codeType;
	}

	public void setCodeType(String codeType) {
		this.codeType = codeType;
	}

}