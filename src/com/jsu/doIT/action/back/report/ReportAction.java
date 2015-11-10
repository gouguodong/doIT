package com.jsu.doIT.action.back.report;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Reply;
import com.jsu.doIT.po.Report;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Userpost;
import com.jsu.doIT.utils.JSONSupport;
import com.jsu.doIT.vo.ReplyVO;
import com.jsu.doIT.vo.ReportVO;
import com.jsu.doIT.vo.UserVO;
import com.jsu.doIT.vo.UserpostVO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

@Controller
@Scope("prototype")
public class ReportAction extends MyActionSupport<Report> {

	private static final long serialVersionUID = -8947899072030825805L;

	private PageBean reportPage;
	private Integer currentPage;

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public String UI() {
		return "UI";
	}

	public String detail() {
		String replyId1 = ServletActionContext.getRequest().getParameter("replyId");
		String psotId1 = ServletActionContext.getRequest().getParameter("postId");
		String reportId1 = ServletActionContext.getRequest().getParameter("reportId");
		if (!reportId1.equals("null")) {
			Integer reportId = Integer.valueOf(reportId1);
			model = reportService.findById(reportId);
			String reportReason = model.getReportReason();
			ValueStack valueStack = ActionContext.getContext().getValueStack();

			valueStack.set("reportReason", reportReason);
		}
		if (!psotId1.equals("null")) {
			Integer postId = Integer.valueOf(psotId1);
			Userpost userpost = userPostService.findById(postId);
			ValueStack valueStack = ActionContext.getContext().getValueStack();
			valueStack.set("userpost", userpost);
			return "detail";
		} else if (!replyId1.equals("null")) {
			Integer postId = Integer.valueOf(replyId1);
			Reply reply = replyService.findById(postId);
			ValueStack valueStack = ActionContext.getContext().getValueStack();
			valueStack.set("reply", reply);
			return "detail1";
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public String getData() {
		try {
			if (model.getReportReason().equals("undefined")) {
				model.setReportReason("");
				return null;
			}
			reportPage = reportService.findReportPage(currentPage, 10, model.getReportReason());
			List<Report> reports = (List<Report>) reportPage.getRecordList();
			List<ReportVO> reportVOs = new ArrayList<ReportVO>();

			for (Report report : reports) {
				reportVOs.add(PO2VO(report));
			}
			reportPage.setRecordList(reportVOs);
			JSONprint(JSONSupport.json(reportPage));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ReportVO PO2VO(Report report) {
		ReportVO reportVO = new ReportVO();
		try {
			BeanUtils.copyProperties(reportVO, report);

			UserVO userVO = new UserVO();
			User user = report.getUser();
			BeanUtils.copyProperties(userVO, user);
			reportVO.setUserVO(userVO);

			ReplyVO replyVO = new ReplyVO();
			Reply reply = report.getReply();
			if (reply != null) {
				BeanUtils.copyProperties(replyVO, report.getReply());
				reportVO.setReplyVO(replyVO);
			}

			UserpostVO userpostVO = new UserpostVO();
			Userpost userpost = report.getUserpost();
			if (userpost != null) {
				BeanUtils.copyProperties(userpostVO, report.getUserpost());
				reportVO.setUserpostVO(userpostVO);
			}
			String reportReason = report.getReportReason();
			if (reportReason.contains(model.getReportReason())) {
				reportReason = reportReason.replace(model.getReportReason(),
						"<span style='color: #0099FF'>" + model.getReportReason() + "</span>");
			}
			reportVO.setReportReason(reportReason);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return reportVO;
	}
}
