package com.jsu.doIT.vo;

public class FeedbackVO implements java.io.Serializable {

	private static final long serialVersionUID = -409322906965596301L;

	private Integer feedId;
	private String feedContext;
	private String times;
	private String status;
	private UserVO userVO;

	public FeedbackVO() {
	}

	public FeedbackVO(String feedContext) {
		this.feedContext = feedContext;
	}

	public FeedbackVO(String feedContext, String times, String status) {
		this.feedContext = feedContext;
		this.times = times;
		this.status = status;
	}

	public Integer getFeedId() {
		return feedId;
	}

	public void setFeedId(Integer feedId) {
		this.feedId = feedId;
	}

	public String getFeedContext() {
		return feedContext;
	}

	public void setFeedContext(String feedContext) {
		this.feedContext = feedContext;
	}

	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public UserVO getUserVO() {
		return userVO;
	}

	public void setUserVO(UserVO userVO) {
		this.userVO = userVO;
	}

}