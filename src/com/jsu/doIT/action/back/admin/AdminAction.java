package com.jsu.doIT.action.back.admin;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.Admin;
import com.jsu.doIT.utils.PublicFieldName;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class AdminAction extends MyActionSupport<Admin> {

	private static final long serialVersionUID = -2338426124288647225L;

	private String result;
	private Integer userNumber;
	private Integer teacherNumber;
	private Integer courseNumber;
	private Integer voideNumber;
	private Integer resourceNumber;

	public String getResult() {
		return result;
	}

	public Integer getUserNumber() {
		return userNumber;
	}

	public Integer getTeacherNumber() {
		return teacherNumber;
	}

	public Integer getCourseNumber() {
		return courseNumber;
	}

	public Integer getVoideNumber() {
		return voideNumber;
	}

	public Integer getResourceNumber() {
		return resourceNumber;
	}

	/**
	 * 进入后台首页
	 * 
	 * @return
	 */
	public String index() {
		model = (Admin) ActionContext.getContext().getSession().get(PublicFieldName.ADMIN);
		userNumber = userService.findAll().size(); // 会员数
		teacherNumber = teacherService.findAll().size(); // 教师数
		courseNumber = courseService.findAll().size(); // 课程数
		voideNumber = voideService.findAll().size(); // 视频数
		resourceNumber = voideResourceService.findAll().size(); // 资源数
		return "index";
	}

	/**
	 * 进入后台登录界面
	 * 
	 * @return
	 */
	public String loginUI() {
		return "UI";
	}

	/**
	 * 管理员登录
	 * 
	 * @return
	 */
	public String login() {
		if (model.getAdminName() == null || model.getAdminName().trim().equals("")) {
			result = "用户名不能为空";
			return "UI";
		} else if (model.getAdminPwd() == null || model.getAdminPwd().trim().equals("")) {
			result = "密码不能为空";
			return "UI";
		}
		Admin admin = adminService.login(model.getAdminName(), model.getAdminPwd());
		ActionContext.getContext().getSession().put(PublicFieldName.ADMIN, admin);
		if (admin == null) {
			result = "用户名不存在或密码错误";
			return "UI";
		}
		return SUCCESS;
	}

	/**
	 * 管理员退出
	 * 
	 * @return
	 */
	public String logout() {
		model = (Admin) ActionContext.getContext().getSession().get(PublicFieldName.ADMIN);
		if (model != null) {
			ActionContext.getContext().getSession().remove(PublicFieldName.ADMIN);
		}
		return "logout";
	}
}
