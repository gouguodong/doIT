package com.jsu.doIT.action.front.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Userinfo;
import com.jsu.doIT.po.Userpost;
import com.jsu.doIT.utils.PublicFieldName;
import com.jsu.doIT.vo.UserinfoRightVO;
import com.jsu.doIT.vo.UserpostVO;
import com.opensymphony.xwork2.ActionContext;

/**
 * 用户帖子信息
 * 
 * @author Administrator
 * 
 */
@Controller
@Scope("prototype")
public class UserPostAction extends MyActionSupport<Userpost> {

	private static final long serialVersionUID = -4346130033262685431L;

	private PageBean ques;
	private Integer currentPage;
	private UserinfoRightVO rightVO;
	private Userinfo userinfo;

	public UserinfoRightVO getRightVO() {
		return rightVO;
	}

	public void setRightVO(UserinfoRightVO rightVO) {
		this.rightVO = rightVO;
	}

	public PageBean getQues() {
		return ques;
	}

	public void setQues(PageBean ques) {
		this.ques = ques;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public String quePost() {
		User user = (User) ActionContext.getContext().getSession().get(PublicFieldName.USER);
		userinfo = userinfoService.findById(user.getUserId());
		rightVO = userinfoPO2VO();
		if (currentPage == null) {
			ques = userPostService.findQuePost(1, 9, 1, user.getUserId());
		} else {
			ques = userPostService.findQuePost(currentPage, 9, 1, user.getUserId());
		}
		userPostPO2VO();
		return "userques";
	}

	/**
	 * 复制PO->VO
	 */
	@SuppressWarnings("unchecked")
	public void userPostPO2VO() {
		List<Userpost> uplist = (List<Userpost>) ques.getRecordList();
		List<UserpostVO> plist = new ArrayList<UserpostVO>();
		for (Userpost up : uplist) {
			UserpostVO pvo = new UserpostVO();
			pvo.copy(pvo, up);
			plist.add(pvo);
		}
		ques.setRecordList(plist);

	}

	public UserinfoRightVO userinfoPO2VO() {
		UserinfoRightVO info = new UserinfoRightVO();
		info.copy(info, userinfo);
		return info;
	}
}
