package com.jsu.doIT.action.front.user;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.Message;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Userinfo;
import com.jsu.doIT.utils.PublicFieldName;
import com.jsu.doIT.utils.PublicMethod;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class RegistAction extends MyActionSupport<User> {

	private static final long serialVersionUID = 4159177848471020644L;

	/**
	 * 注册
	 * 
	 * @return
	 */
	public String regist() {
		try {
			// 用户名/密码/邮箱为空、则不处理
			if (model.getUserName() == null || model.getUserName().trim().equals("") || model.getUserEmail() == null
					|| model.getUserEmail().trim().equals("") || model.getUserPwd() == null
					|| model.getUserPwd().trim().equals("")) {
				JSONprint("1"); // 用户名、邮箱或密码不能为空
				return null;
			}
			if (userService.remoteName(model.getUserName())) {
				JSONprint("2"); // 用户名已存在
				return null;
			}
			if (userService.remoteName(model.getUserEmail())) {
				JSONprint("3"); // 邮箱已存在
				return null;
			}
			String URL = ServletActionContext.getRequest().getHeader("Referer");
			model.setStatus(0);
			model.setUserPwd(PublicMethod.md5(model.getUserPwd()));
			model.setUserHead(headService.findById(1).getHeadUrl());
			// 写入数据库
			userService.save(model);

			Userinfo userinfo = new Userinfo(new User(model.getUserId()));
			userinfo.setCounty(countyService.findById(1));
			userinfo.setRegistTime(new Timestamp(new Date().getTime()));
			userinfo.setMessageNumber(0);
			userinfo.setLoginNumber(1);
			userinfo.setLoginTime(new Timestamp(new Date().getTime()));
			userinfo.setPostNumber(0);
			userinfo.setReplyNumber(0);
			userinfo.setStudyCourse(0);
			userinfo.setStudyTime(0);
			userinfo.setUserExp(0);
			userinfo.setCodeNumber(0);
			userinfo.setTitle(titleService.findById(1));

			userinfoService.save(userinfo);

			ActionContext.getContext().getSession().put(PublicFieldName.USER, model);

			// 发送信息
			User send = new User(1);
			User re = userService.findById(model.getUserId());
			Message message = new Message();
			message.setStatus(0);
			message.setMessageContext("Hi，亲爱的" + re.getUserName() + "，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！");
			message.setSendTime(new Timestamp(new Date().getTime()));
			message.setUserByReceiveId(re);
			message.setUserBySendId(send);
			messageService.save(message);

			ServletActionContext.getResponse().getWriter().print(URL);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	public String aregist() {
		try {
			// 用户名/密码/邮箱为空、则不处理
			if (model.getUserName() == null || model.getUserName().trim().equals("") || model.getUserPwd() == null
					|| model.getUserPwd().trim().equals("")) {
				JSONprint("1"); // 用户名或密码不能为空
				return null;
			}
			if (userService.remoteName(model.getUserName())) {
				JSONprint("2"); // 用户名已存在
				return null;
			}
			if (userService.remoteName(model.getUserEmail())) {
				JSONprint("3"); // 邮箱已存在
				return null;
			}
			model.setStatus(1);
			model.setUserPwd(PublicMethod.md5(model.getUserPwd()));
			model.setUserHead(headService.findById(1).getHeadUrl());
			// 写入数据库
			userService.save(model);

			System.out.println(model.getUserId());
			Userinfo userinfo = new Userinfo(new User(model.getUserId()));
			userinfo.setCounty(countyService.findById(1));
			userinfo.setRegistTime(new Timestamp(new Date().getTime()));
			userinfo.setMessageNumber(0);
			userinfo.setLoginNumber(1);
			userinfo.setLoginTime(new Timestamp(new Date().getTime()));
			userinfo.setPostNumber(0);
			userinfo.setReplyNumber(0);
			userinfo.setStudyCourse(0);
			userinfo.setStudyTime(0);
			userinfo.setUserExp(0);
			userinfo.setCodeNumber(0);
			userinfo.setTitle(titleService.findById(1));

			// userinfoService.save(userinfo);

			// 登录、获得新注册用户的完整信息
			User user = userService.login(model.getUserName(), model.getUserPwd());
			ActionContext.getContext().getSession().put(PublicFieldName.USER, user);

			JSONprint("0"); // 注册成功
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 验证用户名是否存在
	 * 
	 * @return
	 */
	public String remoteName() {
		try {
			if (userService.remoteName(model.getUserName())) {
				ServletActionContext.getResponse().getWriter().print(true);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 验证邮箱是否存在
	 * 
	 * @return
	 */
	public String remoteEmail() {
		try {
			if (userService.remoteName(model.getUserEmail())) {
				ServletActionContext.getResponse().getWriter().print(true);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
