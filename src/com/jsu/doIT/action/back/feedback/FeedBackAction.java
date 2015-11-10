package com.jsu.doIT.action.back.feedback;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Feedback;
import com.jsu.doIT.utils.JSONSupport;
import com.jsu.doIT.utils.converter.DateConvert;
import com.jsu.doIT.vo.FeedbackVO;
import com.jsu.doIT.vo.UserVO;

@Controller
@Scope("prototype")
public class FeedBackAction extends MyActionSupport<Feedback> {

	private static final long serialVersionUID = 5446155770599504012L;
	private PageBean feedbacks;
	private Integer currentPage;
	private String userName;

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String UI() {
		return "UI";
	}

	/**
	 * 意见反馈详细信息页面
	 * 
	 * @return
	 */
	public String detail() {
		model = backService.findById(model.getFeedId());
		return "detail";
	}

	/**
	 * 获取数据
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String getData() {
		try {
			feedbacks = backService.findPage(currentPage, pageSize, userName);
			List<Feedback> list = (List<Feedback>) feedbacks.getRecordList();
			List<FeedbackVO> feedbackVOs = new ArrayList<FeedbackVO>();
			for (Feedback feedback : list) {
				FeedbackVO feedbackVO = new FeedbackVO();
				BeanUtils.copyProperties(feedbackVO, feedback);
				if (feedback.getStatus() == 0) {
					feedbackVO.setStatus("未处理");
				} else {
					feedbackVO.setStatus("已处理");
				}
				feedbackVO.setTimes(DateConvert.datetoString(feedback.getFeedTime()));
				UserVO userVO = new UserVO();
				BeanUtils.copyProperties(userVO, feedback.getUser());
				feedbackVO.setUserVO(userVO);

				String feedContext = feedback.getFeedContext();
				if (model.getFeedContext() != null) {
					if (feedContext.contains(model.getFeedContext())) {
						feedContext = feedContext.replace(model.getFeedContext(),
								"<span style='color: #0099FF'>" + model.getFeedContext() + "</span>");
					}
					feedbackVO.setFeedContext(feedContext);
				}

				feedbackVOs.add(feedbackVO);
			}
			feedbacks.setRecordList(feedbackVOs);
			JSONprint(JSONSupport.json(feedbacks));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
