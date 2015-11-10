package com.jsu.doIT.vo;

import java.util.HashSet;
import java.util.Set;

/**
 * admin的VO对象
 * 
 * @author hadoop
 * 
 */

public class AdminVO implements java.io.Serializable {

	private static final long serialVersionUID = -2343926633200289907L;

	private Integer adminId;
	private ReplyfeedVO replyfeedVO;
	private String adminName;
	private String adminPwd;
	private String times;
	private Set<FilterVO> filtersVO = new HashSet<FilterVO>(0);

	public AdminVO() {
	}

	public AdminVO(String adminName, String adminPwd) {
		this.adminName = adminName;
		this.adminPwd = adminPwd;
	}

	public Integer getAdminId() {
		return this.adminId;
	}

	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}

	public ReplyfeedVO getReplyfeedVO() {
		return replyfeedVO;
	}

	public void setReplyfeedVO(ReplyfeedVO replyfeedVO) {
		this.replyfeedVO = replyfeedVO;
	}

	public void setFiltersVO(Set<FilterVO> filtersVO) {
		this.filtersVO = filtersVO;
	}

	public String getAdminName() {
		return this.adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminPwd() {
		return this.adminPwd;
	}

	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}

	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

	public Set<FilterVO> getFiltersVO() {
		return filtersVO;
	}

	public void setFilters(Set<FilterVO> filtersVO) {
		this.filtersVO = filtersVO;
	}

}