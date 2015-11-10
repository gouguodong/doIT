package com.jsu.doIT.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Voide entity. @author MyEclipse Persistence Tools
 */

public class Voide implements java.io.Serializable {

	// Fields

	private Integer voideId;
	private Voideresource voideresource;
	private Section section;
	private String voideName;
	private String voideUrl;
	private Integer voideTime;
	private String voideCode;
	private Set userinfos = new HashSet(0);
	private Set usercourses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Voide() {
	}

	/** minimal constructor */
	public Voide(String voideName, String voideUrl) {
		this.voideName = voideName;
		this.voideUrl = voideUrl;
	}

	public String getVideoTimeStr() {
		if (voideTime == null) {
			return "00:00";
		}
		int hour = voideTime / 60;
		int minute = voideTime % 60;
		String result = "";
		if (hour < 10) {
			result += "0";
		}
		result += hour + ":";
		if (minute < 10) {
			result += "0";
		}
		result += minute;
		return result;
	}

	/** full constructor */
	public Voide(Voideresource voideresource, Section section, String voideName, String voideUrl, Integer voideTime,
			String voideCode, Set userinfos, Set usercourses) {
		this.voideresource = voideresource;
		this.section = section;
		this.voideName = voideName;
		this.voideUrl = voideUrl;
		this.voideTime = voideTime;
		this.voideCode = voideCode;
		this.userinfos = userinfos;
		this.usercourses = usercourses;
	}

	// Property accessors

	public Integer getVoideId() {
		return this.voideId;
	}

	public void setVoideId(Integer voideId) {
		this.voideId = voideId;
	}

	public Voideresource getVoideresource() {
		return this.voideresource;
	}

	public void setVoideresource(Voideresource voideresource) {
		this.voideresource = voideresource;
	}

	public Section getSection() {
		return this.section;
	}

	public void setSection(Section section) {
		this.section = section;
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

	public String getVoideCode() {
		return this.voideCode;
	}

	public void setVoideCode(String voideCode) {
		this.voideCode = voideCode;
	}

	public Set getUserinfos() {
		return this.userinfos;
	}

	public void setUserinfos(Set userinfos) {
		this.userinfos = userinfos;
	}

	public Set getUsercourses() {
		return this.usercourses;
	}

	public void setUsercourses(Set usercourses) {
		this.usercourses = usercourses;
	}

}