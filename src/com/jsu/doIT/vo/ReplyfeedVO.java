package com.jsu.doIT.vo;

public class ReplyfeedVO implements java.io.Serializable {

	private static final long serialVersionUID = 7303754565574476097L;

	private Integer replyId;
	private String replyContext;

	public ReplyfeedVO() {
	}

	public ReplyfeedVO(String replyContext) {
		this.replyContext = replyContext;
	}

	public Integer getReplyId() {
		return this.replyId;
	}

	public void setReplyId(Integer replyId) {
		this.replyId = replyId;
	}

	public String getReplyContext() {
		return this.replyContext;
	}

	public void setReplyContext(String replyContext) {
		this.replyContext = replyContext;
	}

}