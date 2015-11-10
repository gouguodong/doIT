package com.jsu.doIT.vo;

import org.apache.commons.beanutils.BeanUtils;

import com.jsu.doIT.po.Userpost;
import com.jsu.doIT.utils.converter.DateConvert;

public class UserpostVO implements java.io.Serializable {

	private static final long serialVersionUID = 9135501918566557709L;

	private Integer postId;
	private String postTitle;
	private String postContext;
	private String labelName;
	private String postTime;
	private String replyTime;
	private String pTime;
	private String rTime;
	private Integer clickNumber;
	private Integer replyNumber;

	public UserpostVO() {
	}

	public UserpostVO(String postTitle, String postContext, String postTime) {
		this.postTitle = postTitle;
		this.postContext = postContext;
		this.postTime = postTime;
	}

	public UserpostVO(Integer postId, String postTitle, String postContext, String labelName, String postTime, String replyTime,
			Integer clickNumber, Integer replyNumber) {
		super();
		this.postId = postId;
		this.postTitle = postTitle;
		this.postContext = postContext;
		this.labelName = labelName;
		this.postTime = postTime;
		this.replyTime = replyTime;
		this.clickNumber = clickNumber;
		this.replyNumber = replyNumber;
	}

	public String getLabelName() {
		return labelName;
	}

	public void setLabelName(String labelName) {
		this.labelName = labelName;
	}

	public Integer getPostId() {
		return postId;
	}

	public void setPostId(Integer postId) {
		this.postId = postId;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getPostContext() {
		return postContext;
	}

	public void setPostContext(String postContext) {
		this.postContext = postContext;
	}

	public String getPostTime() {
		return postTime;
	}

	public void setPostTime(String postTime) {
		this.postTime = postTime;
	}

	public String getReplyTime() {
		return replyTime;
	}

	public void setReplyTime(String replyTime) {
		this.replyTime = replyTime;
	}

	public Integer getClickNumber() {
		return clickNumber;
	}

	public void setClickNumber(Integer clickNumber) {
		this.clickNumber = clickNumber;
	}

	public Integer getReplyNumber() {
		return replyNumber;
	}

	public void setReplyNumber(Integer replyNumber) {
		this.replyNumber = replyNumber;
	}

	public void copy(UserpostVO userpostVO, Userpost userpost) {
		try {
			BeanUtils.copyProperties(userpostVO, userpost);
			userpostVO.setLabelName(userpost.getPostlabel().getLabelName());
			userpostVO.setPostTime(DateConvert.datetoString(userpost.getPostTime()));
			userpostVO.setReplyTime(DateConvert.datetoString(userpost.getReplyTime()));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String getpTime() {
		return pTime;
	}

	public void setpTime(String pTime) {
		this.pTime = pTime;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getrTime() {
		return rTime;
	}

	public void setrTime(String rTime) {
		this.rTime = rTime;
	}

	public UserpostVO(Integer postId, String postTitle, String postContext, String postTime, String replyTime,
			Integer clickNumber, Integer replyNumber) {
		super();
		this.postId = postId;
		this.postTitle = postTitle;
		this.postContext = postContext;
		this.postTime = postTime;
		this.replyTime = replyTime;
		this.clickNumber = clickNumber;
		this.replyNumber = replyNumber;
	}

}