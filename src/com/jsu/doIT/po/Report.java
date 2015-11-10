package com.jsu.doIT.po;

/**
 * Report entity. @author MyEclipse Persistence Tools
 */

public class Report implements java.io.Serializable {

	// Fields

	private Integer reportId;
	private User user;
	private Reply reply;
	private Userpost userpost;
	private String reportReason;

	// Constructors

	/** default constructor */
	public Report() {
	}

	/** minimal constructor */
	public Report(String reportReason) {
		this.reportReason = reportReason;
	}

	/** full constructor */
	public Report(User user, Reply reply, Userpost userpost, String reportReason) {
		this.user = user;
		this.reply = reply;
		this.userpost = userpost;
		this.reportReason = reportReason;
	}

	// Property accessors

	public Integer getReportId() {
		return this.reportId;
	}

	public void setReportId(Integer reportId) {
		this.reportId = reportId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Reply getReply() {
		return this.reply;
	}

	public void setReply(Reply reply) {
		this.reply = reply;
	}

	public Userpost getUserpost() {
		return this.userpost;
	}

	public void setUserpost(Userpost userpost) {
		this.userpost = userpost;
	}

	public String getReportReason() {
		return this.reportReason;
	}

	public void setReportReason(String reportReason) {
		this.reportReason = reportReason;
	}

}