package com.jsu.doIT.vo;

import org.apache.commons.beanutils.BeanUtils;

import com.jsu.doIT.po.Userinfo;
import com.jsu.doIT.utils.converter.DateConvert;

public class UserinfoRightVO implements java.io.Serializable {

	private static final long serialVersionUID = 4169591277449020213L;

	private Integer userId;
	//
	private String officeName;
	private String realName;
	private String signature;
	private Integer loginNumber;
	//po->vo时，转换
	private String loginTime;
	private Integer codeNumber;
	private Integer studyTime;
	private Integer studyCourse;
	private Integer replyNumber;
	private Integer postNumber;
	private Integer userLevel;
	private Integer userExp;

	public UserinfoRightVO() {
	}
	/** full constructor */
	
	
	public UserinfoRightVO(Integer userId, String officeName, String realName,
			String signature, Integer loginNumber, String loginTime,
			Integer codeNumber, Integer studyTime, Integer studyCourse,
			Integer replyNumber, Integer postNumber, Integer userLevel,
			Integer userExp) {
		super();
		this.userId = userId;
		this.officeName = officeName;
		this.realName = realName;
		this.signature = signature;
		this.loginNumber = loginNumber;
		this.loginTime = loginTime;
		this.codeNumber = codeNumber;
		this.studyTime = studyTime;
		this.studyCourse = studyCourse;
		this.replyNumber = replyNumber;
		this.postNumber = postNumber;
		this.userLevel = userLevel;
		this.userExp = userExp;
	}
	public Integer getUserId() {
		return userId;
	}
	
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
	public String getOfficeName() {
		return officeName;
	}
	public void setOfficeName(String officeName) {
		this.officeName = officeName;
	}
	
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getSignature() {
		return signature;
	}
	public void setSignature(String signature) {
		this.signature = signature;
	}
	public Integer getLoginNumber() {
		return loginNumber;
	}
	public void setLoginNumber(Integer loginNumber) {
		this.loginNumber = loginNumber;
	}
	public String getLoginTime() {
		return loginTime;
	}
	public void setLoginTime(String loginTime) {
		this.loginTime = loginTime;
	}
	public Integer getCodeNumber() {
		return codeNumber;
	}
	public void setCodeNumber(Integer codeNumber) {
		this.codeNumber = codeNumber;
	}
	public Integer getStudyTime() {
		return studyTime;
	}
	public void setStudyTime(Integer studyTime) {
		this.studyTime = studyTime;
	}
	public Integer getStudyCourse() {
		return studyCourse;
	}
	public void setStudyCourse(Integer studyCourse) {
		this.studyCourse = studyCourse;
	}
	public Integer getReplyNumber() {
		return replyNumber;
	}
	public void setReplyNumber(Integer replyNumber) {
		this.replyNumber = replyNumber;
	}
	public Integer getPostNumber() {
		return postNumber;
	}
	public void setPostNumber(Integer postNumber) {
		this.postNumber = postNumber;
	}
	public Integer getUserLevel() {
		return userLevel;
	}
	public void setUserLevel(Integer userLevel) {
		this.userLevel = userLevel;
	}
	public Integer getUserExp() {
		return userExp;
	}
	public void setUserExp(Integer userExp) {
		this.userExp = userExp;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public void copy(UserinfoRightVO rightVO,Userinfo userinfo){
		try {
			BeanUtils.copyProperties(rightVO, userinfo);
			rightVO.setLoginTime(DateConvert.datetoString(userinfo.getLoginTime()));
			if (userinfo.getUseroffice() != null) {
				rightVO.setOfficeName(userinfo.getUseroffice().getOfficeName());				
			}
		} catch (Exception e) {
			e.printStackTrace();
	}

	}
}