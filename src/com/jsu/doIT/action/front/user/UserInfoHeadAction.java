package com.jsu.doIT.action.front.user;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.Head;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Userinfo;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class UserInfoHeadAction extends MyActionSupport<Userinfo> {

	private static final long serialVersionUID = -7863977507767219181L;
	private Random random = new Random();

	private File myFile; // 上传的文件

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}

	public String UI() {
		if (getCurrentUser() == null) { // 没有登录
			return "notLogin";
		}
		model = getCurrentUser().getUserinfo();
		return "UI";
	}

	public String changeSystemHead() {
		String URL = ServletActionContext.getRequest().getHeader("Referer");
		model = getCurrentUser().getUserinfo();
		List<Head> heads = headService.findAll();
		Integer index = random.nextInt(heads.size());

		while (heads.get(index).getHeadUrl().equals(model.getUserHead())) {
			index = random.nextInt(heads.size());
		}
		model.setUserHead(heads.get(index).getHeadUrl());
		getCurrentUser().setUserHead(model.getUserHead());

		userinfoService.update(model);
		userService.update(getCurrentUser());

		JSONprint(URL);

		return null;
	}
	
	public String find() {
		JSONprint(ActionContext.getContext().getSession().get("userHead"));
		return null;
	}
	
	public String save() {
		String URL = ServletActionContext.getRequest().getHeader("Referer");
		String userHead = (String) ActionContext.getContext().getSession().get("userHead");

		User user = getCurrentUser();
		model = user.getUserinfo();
		
		model.setUserHead(userHead);
		user.setUserHead(userHead);

		userinfoService.update(model);
		userService.update(user);

		JSONprint(URL);
		
		return null;
	}

	public String upload() {
		try {
			User user = getCurrentUser();
			if (user == null) {
				return null;
			}
			String realPath = ServletActionContext.getServletContext().getRealPath("\\upload\\image\\head");
			InputStream is = new FileInputStream(myFile);

			String path = realPath + "\\" + user.getUserId();
			File isExist = new File(path);
			if (!isExist.exists()) {
				isExist.mkdir();
			}
			Long time = new Date().getTime();
			File destFile = new File(path, time + ".png");
			// 把图片写入到上面设置的路径里
			OutputStream os = new FileOutputStream(destFile);
			byte[] buffer = new byte[400];
			int length = 0;
			while ((length = is.read(buffer)) > 0) {
				os.write(buffer, 0, length);
			}
			ActionContext.getContext().getSession().put("userHead", "upload/image/head/" + user.getUserId() + "/" + time + ".png");
			is.close();
			os.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "UI";
	}
}
