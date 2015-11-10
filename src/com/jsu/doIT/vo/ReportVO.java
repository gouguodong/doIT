package com.jsu.doIT.vo;

public class ReportVO implements java.io.Serializable {

	private static final long serialVersionUID = -315553016190431114L;

	private Integer reportId;
	private UserVO userVO;
	private ReplyVO replyVO;
	private UserpostVO userpostVO;
	private String reportReason;

	public ReportVO() {
	}

	public ReportVO(String reportReason) {
		this.reportReason = reportReason;
	}

	public Integer getReportId() {
		return reportId;
	}

	public void setReportId(Integer reportId) {
		this.reportId = reportId;
	}

	public String getReportReason() {
		return reportReason;
	}

	public void setReportReason(String reportReason) {
		this.reportReason = reportReason;
	}

	public UserVO getUserVO() {
		return userVO;
	}

	public void setUserVO(UserVO userVO) {
		this.userVO = userVO;
	}

	public ReplyVO getReplyVO() {
		return replyVO;
	}

	public void setReplyVO(ReplyVO replyVO) {
		this.replyVO = replyVO;
	}

	public UserpostVO getUserpostVO() {
		return userpostVO;
	}

	public void setUserpostVO(UserpostVO userpostVO) {
		this.userpostVO = userpostVO;
	}

}
