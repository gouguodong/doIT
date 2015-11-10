package com.jsu.doIT.vo;

import org.apache.commons.beanutils.BeanUtils;

import com.jsu.doIT.po.User;

public class UserVO implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	private Integer userId;
	private String userName;
	private String userPwd;
	private String userHead;
	private String userEmail;
	private String userTel;
	private String userQq;
	private String userWeixin;
	private String userSina;
	private String userStatus;
	private String frost;
	private UserinfoVO userinfoVO;

	private String adoptPercent; // 采纳率

	public UserVO() {
	}

	public UserVO(String userName, String userPwd) {
		this.userName = userName;
		this.userPwd = userPwd;
	}

	public UserVO(Integer userId, String userName, String userPwd, String userHead, String userEmail, String userTel,
			String userQq, String userWeixin, String userSina, String userStatus) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userHead = userHead;
		this.userEmail = userEmail;
		this.userTel = userTel;
		this.userQq = userQq;
		this.userWeixin = userWeixin;
		this.userSina = userSina;
		this.userStatus = userStatus;
	}

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

	public String getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}

	public UserinfoVO getUserinfoVO() {
		return userinfoVO;
	}

	public void setUserinfoVO(UserinfoVO userinfoVO) {
		this.userinfoVO = userinfoVO;
	}

	public String getFrost() {
		return frost;
	}

	public void setFrost(String frost) {
		this.frost = frost;
	}

	public String getAdoptPercent() {
		return adoptPercent;
	}

	public void setAdoptPercent(String adoptPercent) {
		this.adoptPercent = adoptPercent;
	}

	public void copy(UserVO userVO, User user) {
		try {
			BeanUtils.copyProperties(userVO, user);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}