package com.jsu.doIT.po;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */

public class Userinfo implements java.io.Serializable {

	// Fields

	private Integer userId;
	private Voide voide;
	private Useroffice useroffice;
	private Usergroup usergroup;
	private Usertype usertype;
	private Title title;
	private User user;
	private County county;
	private Userlabel userlabel;
	private Integer codeId;
	private String userHead;
	private String realName;
	private String userSex;
	private Timestamp birthday;
	private Timestamp registTime;
	private String signature;
	private Integer loginNumber;
	private Timestamp loginTime;
	private Integer codeNumber;
	private Integer messageNumber;
	private Integer studyTime;
	private Integer studyCourse;
	private Integer replyNumber;
	private Integer postNumber;
	private Integer userLevel;
	private Integer userExp;
	private Set usercodes = new HashSet(0);

	// Constructors

	/** default constructor */
	public Userinfo() {
	}

	/** minimal constructor */
	public Userinfo(User user) {
		this.user = user;
	}

	/** full constructor */
	public Userinfo(Voide voide, Useroffice useroffice, Usergroup usergroup, Usertype usertype, Title title, User user,
			County county, Userlabel userlabel, Integer codeId, String userHead, String realName, String userSex,
			Timestamp birthday, Timestamp registTime, String signature, Integer loginNumber, Timestamp loginTime,
			Integer codeNumber, Integer messageNumber, Integer studyTime, Integer studyCourse, Integer replyNumber,
			Integer postNumber, Integer userLevel, Integer userExp, Set usercodes) {
		this.voide = voide;
		this.useroffice = useroffice;
		this.usergroup = usergroup;
		this.usertype = usertype;
		this.title = title;
		this.user = user;
		this.county = county;
		this.userlabel = userlabel;
		this.codeId = codeId;
		this.userHead = userHead;
		this.realName = realName;
		this.userSex = userSex;
		this.birthday = birthday;
		this.registTime = registTime;
		this.signature = signature;
		this.loginNumber = loginNumber;
		this.loginTime = loginTime;
		this.codeNumber = codeNumber;
		this.messageNumber = messageNumber;
		this.studyTime = studyTime;
		this.studyCourse = studyCourse;
		this.replyNumber = replyNumber;
		this.postNumber = postNumber;
		this.userLevel = userLevel;
		this.userExp = userExp;
		this.usercodes = usercodes;
	}

	// Property accessors

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Voide getVoide() {
		return this.voide;
	}

	public void setVoide(Voide voide) {
		this.voide = voide;
	}

	public Useroffice getUseroffice() {
		return this.useroffice;
	}

	public void setUseroffice(Useroffice useroffice) {
		this.useroffice = useroffice;
	}

	public Usergroup getUsergroup() {
		return this.usergroup;
	}

	public void setUsergroup(Usergroup usergroup) {
		this.usergroup = usergroup;
	}

	public Usertype getUsertype() {
		return this.usertype;
	}

	public void setUsertype(Usertype usertype) {
		this.usertype = usertype;
	}

	public Title getTitle() {
		return this.title;
	}

	public void setTitle(Title title) {
		this.title = title;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public County getCounty() {
		return this.county;
	}

	public void setCounty(County county) {
		this.county = county;
	}

	public Userlabel getUserlabel() {
		return this.userlabel;
	}

	public void setUserlabel(Userlabel userlabel) {
		this.userlabel = userlabel;
	}

	public Integer getCodeId() {
		return this.codeId;
	}

	public void setCodeId(Integer codeId) {
		this.codeId = codeId;
	}

	public String getUserHead() {
		return this.userHead;
	}

	public void setUserHead(String userHead) {
		this.userHead = userHead;
	}

	public String getRealName() {
		return this.realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getUserSex() {
		return this.userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public Timestamp getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Timestamp birthday) {
		this.birthday = birthday;
	}

	public Timestamp getRegistTime() {
		return this.registTime;
	}

	public void setRegistTime(Timestamp registTime) {
		this.registTime = registTime;
	}

	public String getSignature() {
		return this.signature;
	}

	public void setSignature(String signature) {
		this.signature = signature;
	}

	public Integer getLoginNumber() {
		return this.loginNumber;
	}

	public void setLoginNumber(Integer loginNumber) {
		this.loginNumber = loginNumber;
	}

	public Timestamp getLoginTime() {
		return this.loginTime;
	}

	public void setLoginTime(Timestamp loginTime) {
		this.loginTime = loginTime;
	}

	public Integer getCodeNumber() {
		return this.codeNumber;
	}

	public void setCodeNumber(Integer codeNumber) {
		this.codeNumber = codeNumber;
	}

	public Integer getMessageNumber() {
		return this.messageNumber;
	}

	public void setMessageNumber(Integer messageNumber) {
		this.messageNumber = messageNumber;
	}

	public Integer getStudyTime() {
		return this.studyTime;
	}

	public void setStudyTime(Integer studyTime) {
		this.studyTime = studyTime;
	}

	public Integer getStudyCourse() {
		return this.studyCourse;
	}

	public void setStudyCourse(Integer studyCourse) {
		this.studyCourse = studyCourse;
	}

	public Integer getReplyNumber() {
		return this.replyNumber;
	}

	public void setReplyNumber(Integer replyNumber) {
		this.replyNumber = replyNumber;
	}

	public Integer getPostNumber() {
		return this.postNumber;
	}

	public void setPostNumber(Integer postNumber) {
		this.postNumber = postNumber;
	}

	public Integer getUserLevel() {
		return this.userLevel;
	}

	public void setUserLevel(Integer userLevel) {
		this.userLevel = userLevel;
	}

	public Integer getUserExp() {
		return this.userExp;
	}

	public void setUserExp(Integer userExp) {
		this.userExp = userExp;
	}

	public Set getUsercodes() {
		return this.usercodes;
	}

	public void setUsercodes(Set usercodes) {
		this.usercodes = usercodes;
	}

}