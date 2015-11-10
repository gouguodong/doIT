package com.jsu.doIT.action.front.user;

import java.sql.Timestamp;
import java.util.Date;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Userinfo;
import com.jsu.doIT.utils.PublicFieldName;
import com.opensymphony.xwork2.ActionContext;

/**
 * 用户登录
 * 
 * @author hadoop
 * 
 */

@Controller
@Scope("prototype")
public class LoginAction extends MyActionSupport<User> {

	private static final long serialVersionUID = 845280458098053817L;

	/**
	 * 用户登录
	 * 
	 * @return
	 * @throws Exception
	 */
	public String login() throws Exception {
		String URL = ServletActionContext.getRequest().getHeader("Referer");
//		System.out.println("URL: " + URL);
		User user = userService.login(model.getUserName(), model.getUserPwd());
		if (user != null) { // 登录成功、将user放进Session
			ActionContext.getContext().getSession().put(PublicFieldName.USER, user);
			Userinfo userinfo = user.getUserinfo();
			userinfo.setLoginTime(new Timestamp(new Date().getTime()));
			userinfoService.update(userinfo);
			JSONprint(URL);
		} else {
			JSONprint("1");
		}
		return null;
	}
}
