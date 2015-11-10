package com.jsu.doIT.vo;


public class UserinfoVO implements java.io.Serializable {

	private static final long serialVersionUID = 2576800233235667333L;

	private Integer userId;
	private Integer codeId;
	private String userHead;
	private String realName;
	private String userSex;
	private String userbirthday;
	private String userregistTime;
	private String signature;
	private Integer loginNumber;
	private String userloginTime;
	private Integer codeNumber;
	private Integer messageNumber;
	private Integer studyTime;
	private Integer studyCourse;
	private Integer replyNumber;
	private Integer postNumber;
	private Integer userLevel;
	private Integer userExp;
	private String officeName;

	public UserinfoVO() {
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getCodeId() {
		return codeId;
	}

	public void setCodeId(Integer codeId) {
		this.codeId = codeId;
	}

	public String getUserHead() {
		return userHead;
	}

	public void setUserHead(String userHead) {
		this.userHead = userHead;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
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

	public Integer getCodeNumber() {
		return codeNumber;
	}

	public void setCodeNumber(Integer codeNumber) {
		this.codeNumber = codeNumber;
	}

	public Integer getMessageNumber() {
		return messageNumber;
	}

	public void setMessageNumber(Integer messageNumber) {
		this.messageNumber = messageNumber;
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

	public String getUserbirthday() {
		return userbirthday;
	}

	public void setUserbirthday(String userbirthday) {
		this.userbirthday = userbirthday;
	}

	public String getUserregistTime() {
		return userregistTime;
	}

	public void setUserregistTime(String userregistTime) {
		this.userregistTime = userregistTime;
	}

	public String getUserloginTime() {
		return userloginTime;
	}

	public void setUserloginTime(String userloginTime) {
		this.userloginTime = userloginTime;
	}

	public String getOfficeName() {
		return officeName;
	}

	public void setOfficeName(String officeName) {
		this.officeName = officeName;
	}

}