package com.jsu.doIT.po;

import java.sql.Timestamp;

/**
 * Usercode entity. @author MyEclipse Persistence Tools
 */

public class Usercode implements java.io.Serializable {

	// Fields

	private Integer codeId;
	private Codetype codetype;
	private Userinfo userinfo;
	private String codeContext;
	private Timestamp saveTime;

	// Constructors

	/** default constructor */
	public Usercode() {
	}

	/** minimal constructor */
	public Usercode(String codeContext) {
		this.codeContext = codeContext;
	}

	/** full constructor */
	public Usercode(Codetype codetype, Userinfo userinfo, String codeContext, Timestamp saveTime) {
		this.codetype = codetype;
		this.userinfo = userinfo;
		this.codeContext = codeContext;
		this.saveTime = saveTime;
	}

	// Property accessors

	public Integer getCodeId() {
		return this.codeId;
	}

	public void setCodeId(Integer codeId) {
		this.codeId = codeId;
	}

	public Codetype getCodetype() {
		return this.codetype;
	}

	public void setCodetype(Codetype codetype) {
		this.codetype = codetype;
	}

	public Userinfo getUserinfo() {
		return this.userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public String getCodeContext() {
		return this.codeContext;
	}

	public void setCodeContext(String codeContext) {
		this.codeContext = codeContext;
	}

	public Timestamp getSaveTime() {
		return this.saveTime;
	}

	public void setSaveTime(Timestamp saveTime) {
		this.saveTime = saveTime;
	}

}