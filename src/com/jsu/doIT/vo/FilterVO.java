package com.jsu.doIT.vo;

/**
 * filter的VO对象
 * @author hadoop
 *
 */

public class FilterVO implements java.io.Serializable {

	private static final long serialVersionUID = -8087992620465718614L;

	private Integer filterId;
	private AdminVO adminVO;
	private String filterContext;
	private String replaceTo;
	private String addTime;

	public FilterVO() {
	}

	public FilterVO(String filterContext, String replaceTo) {
		this.filterContext = filterContext;
		this.replaceTo = replaceTo;
	}

	public FilterVO(AdminVO adminVO, String filterContext, String replaceTo, String addTime) {
		this.adminVO = adminVO;
		this.filterContext = filterContext;
		this.replaceTo = replaceTo;
		this.addTime = addTime;
	}

	public Integer getFilterId() {
		return this.filterId;
	}

	public void setFilterId(Integer filterId) {
		this.filterId = filterId;
	}

	public AdminVO getAdminVO() {
		return adminVO;
	}

	public void setAdminVO(AdminVO adminVO) {
		this.adminVO = adminVO;
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