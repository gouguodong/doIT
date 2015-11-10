package com.jsu.doIT.action.front.user;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Userinfo;
import com.jsu.doIT.utils.JSONSupport;
import com.jsu.doIT.utils.PublicFieldName;
import com.jsu.doIT.vo.UserinfoRightVO;
import com.opensymphony.xwork2.ActionContext;

/**
 * 用户个人信息
 * 
 * @author Administrator
 * 
 */
@Controller
@Scope("prototype")
public class UserInfoAction extends MyActionSupport<Userinfo> {

	private static final long serialVersionUID = -1859378895080296475L;

	public String showUser() {
		User user = (User) ActionContext.getContext().getSession().get(PublicFieldName.USER);
		this.model = userinfoService.findById(user.getUserId());
		// System.out.println("office____"+this.model.getUseroffice().getOfficeName());
		UserinfoRightVO rinfo = userinfoPO2VO();

		try {
			ServletActionContext.getResponse().getWriter().print(JSONSupport.json(rinfo));
			// System.out.println("userinfo::::"+JSONSupport.json(rinfo));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public UserinfoRightVO userinfoPO2VO() {
		UserinfoRightVO info = new UserinfoRightVO();
		info.copy(info, this.model);
		return info;

	}
}
