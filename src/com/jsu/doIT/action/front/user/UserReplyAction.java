package com.jsu.doIT.action.front.user;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Reply;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Userinfo;
import com.jsu.doIT.utils.PublicFieldName;
import com.jsu.doIT.utils.converter.DateConvert;
import com.jsu.doIT.vo.UserReplyVO;
import com.jsu.doIT.vo.UserVO;
import com.jsu.doIT.vo.UserinfoRightVO;
import com.jsu.doIT.vo.UserpostVO;
import com.opensymphony.xwork2.ActionContext;

/**
 * 用户回复帖子信息
 * 
 * @author Administrator
 * 
 */
@Controller
@Scope("prototype")
public class UserReplyAction extends MyActionSupport<Reply> {

	private static final long serialVersionUID = -8137494907792859260L;

	private PageBean myreply;
	private Integer currentPage;
	private UserinfoRightVO rightVO;
	private Userinfo userinfo;

	public UserinfoRightVO getRightVO() {
		return rightVO;
	}

	public void setRightVO(UserinfoRightVO rightVO) {
		this.rightVO = rightVO;
	}

	public PageBean getMyreply() {
		return myreply;
	}

	public void setMyreply(PageBean myreply) {
		this.myreply = myreply;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public String myReply() {
		User user = (User) ActionContext.getContext().getSession().get(PublicFieldName.USER);
		userinfo = userinfoService.findById(user.getUserId());
		rightVO = userinfoPO2VO();
		if (currentPage == null) {
			myreply = replyService.findMyReply(1, 9, user.getUserId());
		} else {
			myreply = replyService.findMyReply(currentPage, 9, user.getUserId());
		}
		replyPO2VO();

		return "userreply";
	}

	/**
	 * 复制PO->VO
	 */
	@SuppressWarnings("unchecked")
	public void replyPO2VO() {
		List<Reply> rlist = (List<Reply>) myreply.getRecordList();
		List<UserReplyVO> urlist = new ArrayList<UserReplyVO>();
		for (Reply r : rlist) {
			UserReplyVO urvo = new UserReplyVO();
			try {
				BeanUtils.copyProperties(urvo, r);
			} catch (Exception e) {
				e.printStackTrace();
			}
			urvo.setReplyTime((DateConvert.datetoString(r.getReplyTime()).substring(0, 19)));
			UserpostVO pvo = new UserpostVO();
			pvo.copy(pvo, r.getUserpost());
			urvo.setUserpostVO(pvo);
			UserVO uvo = new UserVO();
			uvo.copy(uvo, r.getUserpost().getUser());
			urvo.setUserVO(uvo);
			urlist.add(urvo);
		}
		myreply.setRecordList(urlist);
	}

	public UserinfoRightVO userinfoPO2VO() {
		UserinfoRightVO info = new UserinfoRightVO();
		info.copy(info, userinfo);
		return info;
	}
}
