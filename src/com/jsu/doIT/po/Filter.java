package com.jsu.doIT.po;

/**
 * Filter entity. @author MyEclipse Persistence Tools
 */

public class Filter implements java.io.Serializable {

	// Fields

	private Integer filterId;
	private Admin admin;
	private String filterContext;
	private String replaceTo;
	private String addTime;

	// Constructors

	/** default constructor */
	public Filter() {
	}

	/** minimal constructor */
	public Filter(String filterContext, String replaceTo) {
		this.filterContext = filterContext;
		this.replaceTo = replaceTo;
	}

	/** full constructor */
	public Filter(Admin admin, String filterContext, String replaceTo, String addTime) {
		this.admin = admin;
		this.filterContext = filterContext;
		this.replaceTo = replaceTo;
		this.addTime = addTime;
	}

	// Property accessors

	public Integer getFilterId() {
		return this.filterId;
	}

	public void setFilterId(Integer filterId) {
		this.filterId = filterId;
	}

	public Admin getAdmin() {
		return this.admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public String getFilterContext() {
		return this.filterContext;
	}

	public void setFilterContext(String filterContext) {
		this.filterContext = filterContext;
	}

	public String getReplaceTo() {
		return this.replaceTo;
	}

	public void setReplaceTo(String replaceTo) {
		this.replaceTo = replaceTo;
	}

	public String getAddTime() {
		return this.addTime;
	}

	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}

}