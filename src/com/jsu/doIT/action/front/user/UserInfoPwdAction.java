package com.jsu.doIT.action.front.user;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.User;
import com.jsu.doIT.utils.PublicFieldName;
import com.jsu.doIT.utils.PublicMethod;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class UserInfoPwdAction extends MyActionSupport<User> {

	private static final long serialVersionUID = 2230884361401940692L;

	private String oldPwd;

	public void setOldPwd(String oldPwd) {
		this.oldPwd = oldPwd;
	}

	/**
	 * 进入密码修改界面
	 * 
	 * @return
	 */
	public String UI() {
		if (getCurrentUser() == null) { // 没有登录
			return "notLogin";
		}
		return "UI";
	}

	public String update() {
		User user = getCurrentUser();
		if (!user.getUserPwd().equals(PublicMethod.md5(oldPwd))) {
			// 旧密码不一致
			JSONprint("旧密码输入错误");
			return null;
		}
		user.setUserPwd(PublicMethod.md5(model.getUserPwd()));
		userService.update(user);
		ActionContext.getContext().getSession().put(PublicFieldName.USER, user);
		JSONprint("0"); // 修改成功
		return null;
	}

	public String aupdate() {
		ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		String userName = ServletActionContext.getRequest().getAttribute("userName").toString();
		try {
			userName = new String(userName.getBytes("ISO-8859-1"), "UTF-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		User user = userService.findByUserName(userName);
		if (!user.getUserPwd().equals(PublicMethod.md5(oldPwd))) {
			// 旧密码不一致
			JSONprint("旧密码输入错误");
			return null;
		}
		user.setUserPwd(PublicMethod.md5(model.getUserPwd()));
		userService.update(user);
		ActionContext.getContext().getSession().put(PublicFieldName.USER, user);
		JSONprint("0"); // 修改成功
		return null;
	}

}
