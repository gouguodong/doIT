package com.jsu.doIT.action.front.user;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.User;
import com.jsu.doIT.utils.PublicFieldName;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class LogoutAction extends MyActionSupport<User> {

	private static final long serialVersionUID = 1783209413387286883L;

	/**
	 * 用户注销
	 * 
	 * @return
	 */
	public String logout() {
		model = getCurrentUser();
		if (model != null) {
			ActionContext.getContext().getSession().remove(PublicFieldName.USER);
		}
		return SUCCESS;
	}
}
