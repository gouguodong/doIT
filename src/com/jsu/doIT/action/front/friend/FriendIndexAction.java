package com.jsu.doIT.action.front.friend;

import java.io.IOException;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.Applyfriend;
import com.jsu.doIT.po.Message;
import com.jsu.doIT.po.User;

@Controller
@Scope("prototype")
public class FriendIndexAction extends MyActionSupport<Object>{

	private static final long serialVersionUID = -1991365585528973915L;
	
	private int id;
	private String context;
	private User user;
	private int hour;
	private int minute;
	
	public String index() {
		user = userService.findById(id);
		int studyTime = user.getUserinfo().getStudyTime();
		User currentUser = getCurrentUser();
		System.out.println(user.getUserId());
		if (currentUser != null) {
			System.out.println(currentUser.getUserId());
			try {
				userRelationService.get("from Userrelation where userByUserIdA=? and userByUserIdB=?", user, currentUser);
				ServletActionContext.getRequest().getSession().setAttribute("isFirend", true);
			} catch (Exception e) {
				//不是好友
				ServletActionContext.getRequest().getSession().setAttribute("isFirend", false);
				//System.out.println(e);
				//System.out.println("不是好友");
			}
		}
		hour = studyTime / 60;
		minute = studyTime % 60;
		return "index";
	}
	
	public void addFriend() {
		//TODO 增加Message 信息
		try {
			//发送好友申请
			user = userService.findById(id);
			//System.out.println(user);
			applyfriendService.save(new Applyfriend(getCurrentUser(), user, new java.sql.Timestamp(System.currentTimeMillis()), 0, context));
			
			ServletActionContext.getResponse().getWriter().print(200);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 发送消息
	 */
	public void sendMessage() {
		
		user = userService.findById(id);
		messageService.save(new Message(user, getCurrentUser(), context, 0, new java.sql.Timestamp(System.currentTimeMillis())));
		
		try {
			ServletActionContext.getResponse().getWriter().print(200);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	public void setId(int id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public int getHour() {
		return hour;
	}

	public int getMinute() {
		return minute;
	}

	public void setContext(String context) {
		this.context = context;
	}
	
}
