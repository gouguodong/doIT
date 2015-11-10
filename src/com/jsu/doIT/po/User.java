package com.jsu.doIT.po;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer userId;
	private String userName;
	private String userPwd;
	private String userHead;
	private String userEmail;
	private String userTel;
	private String userQq;
	private String userWeixin;
	private String userSina;
	private Integer status;
	private Timestamp frostTime;
	private Set messagesForReceiveId = new HashSet(0);
	private Set reports = new HashSet(0);
	private Set userposts = new HashSet(0);
	private Set usercourses = new HashSet(0);
	private Set applyfriendsForRecUserId = new HashSet(0);
	private Set studies = new HashSet(0);
	private Userinfo userinfo;
	private Set applyfriendsForApplyUserId = new HashSet(0);
	private Set userrelationsForUserIdA = new HashSet(0);
	private Set feedbacks = new HashSet(0);
	private Set userrelationsForUserIdB = new HashSet(0);
	private Set coursecomments = new HashSet(0);
	private Set replies = new HashSet(0);
	private Set messagesForSendId = new HashSet(0);
	private Set agrees = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	public User(Integer userId) {
		this.userId = userId;
	}

	/** minimal constructor */
	public User(String userName, String userPwd) {
		this.userName = userName;
		this.userPwd = userPwd;
	}

	/** full constructor */
	public User(String userName, String userPwd, String userHead, String userEmail, String userTel, String userQq,
			String userWeixin, String userSina, Integer status, Timestamp frostTime, Set messagesForReceiveId, Set reports,
			Set userposts, Set usercourses, Set applyfriendsForRecUserId, Set studies, Userinfo userinfo,
			Set applyfriendsForApplyUserId, Set userrelationsForUserIdA, Set feedbacks, Set userrelationsForUserIdB,
			Set coursecomments, Set replies, Set messagesForSendId, Set agrees) {
		this.userName = userName;
		this.userPwd = userPwd;
		this.userHead = userHead;
		this.userEmail = userEmail;
		this.userTel = userTel;
		this.userQq = userQq;
		this.userWeixin = userWeixin;
		this.userSina = userSina;
		this.status = status;
		this.frostTime = frostTime;
		this.messagesForReceiveId = messagesForReceiveId;
		this.reports = reports;
		this.userposts = userposts;
		this.usercourses = usercourses;
		this.applyfriendsForRecUserId = applyfriendsForRecUserId;
		this.studies = studies;
		this.userinfo = userinfo;
		this.applyfriendsForApplyUserId = applyfriendsForApplyUserId;
		this.userrelationsForUserIdA = userrelationsForUserIdA;
		this.feedbacks = feedbacks;
		this.userrelationsForUserIdB = userrelationsForUserIdB;
		this.coursecomments = coursecomments;
		this.replies = replies;
		this.messagesForSendId = messagesForSendId;
		this.agrees = agrees;
	}

	// Property accessors

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPwd() {
		return this.userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserHead() {
		return this.userHead;
	}

	public void setUserHead(String userHead) {
		this.userHead = userHead;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserTel() {
		return this.userTel;
	}

	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}

	public String getUserQq() {
		return this.userQq;
	}

	public void setUserQq(String userQq) {
		this.userQq = userQq;
	}

	public String getUserWeixin() {
		return this.userWeixin;
	}

	public void setUserWeixin(String userWeixin) {
		this.userWeixin = userWeixin;
	}

	public String getUserSina() {
		return this.userSina;
	}

	public void setUserSina(String userSina) {
		this.userSina = userSina;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Timestamp getFrostTime() {
		return this.frostTime;
	}

	public void setFrostTime(Timestamp frostTime) {
		this.frostTime = frostTime;
	}

	public Set getMessagesForReceiveId() {
		return this.messagesForReceiveId;
	}

	public void setMessagesForReceiveId(Set messagesForReceiveId) {
		this.messagesForReceiveId = messagesForReceiveId;
	}

	public Set getReports() {
		return this.reports;
	}

	public void setReports(Set reports) {
		this.reports = reports;
	}

	public Set getUserposts() {
		return this.userposts;
	}

	public void setUserposts(Set userposts) {
		this.userposts = userposts;
	}

	public Set getUsercourses() {
		return this.usercourses;
	}

	public void setUsercourses(Set usercourses) {
		this.usercourses = usercourses;
	}

	public Set getApplyfriendsForRecUserId() {
		return this.applyfriendsForRecUserId;
	}

	public void setApplyfriendsForRecUserId(Set applyfriendsForRecUserId) {
		this.applyfriendsForRecUserId = applyfriendsForRecUserId;
	}

	public Set getStudies() {
		return this.studies;
	}

	public void setStudies(Set studies) {
		this.studies = studies;
	}

	public Userinfo getUserinfo() {
		return this.userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public Set getApplyfriendsForApplyUserId() {
		return this.applyfriendsForApplyUserId;
	}

	public void setApplyfriendsForApplyUserId(Set applyfriendsForApplyUserId) {
		this.applyfriendsForApplyUserId = applyfriendsForApplyUserId;
	}

	public Set getUserrelationsForUserIdA() {
		return this.userrelationsForUserIdA;
	}

	public void setUserrelationsForUserIdA(Set userrelationsForUserIdA) {
		this.userrelationsForUserIdA = userrelationsForUserIdA;
	}

	public Set getFeedbacks() {
		return this.feedbacks;
	}

	public void setFeedbacks(Set feedbacks) {
		this.feedbacks = feedbacks;
	}

	public Set getUserrelationsForUserIdB() {
		return this.userrelationsForUserIdB;
	}

	public void setUserrelationsForUserIdB(Set userrelationsForUserIdB) {
		this.userrelationsForUserIdB = userrelationsForUserIdB;
	}

	public Set getCoursecomments() {
		return this.coursecomments;
	}

	public void setCoursecomments(Set coursecomments) {
		this.coursecomments = coursecomments;
	}

	public Set getReplies() {
		return this.replies;
	}

	public void setReplies(Set replies) {
		this.replies = replies;
	}

	public Set getMessagesForSendId() {
		return this.messagesForSendId;
	}

	public void setMessagesForSendId(Set messagesForSendId) {
		this.messagesForSendId = messagesForSendId;
	}

	public Set getAgrees() {
		return this.agrees;
	}

	public void setAgrees(Set agrees) {
		this.agrees = agrees;
	}

}