package com.jsu.doIT.action.front.message;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.Message;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Userinfo;
import com.jsu.doIT.po.Useroffice;
import com.jsu.doIT.utils.JSONSupport;
import com.jsu.doIT.utils.Robot;
import com.jsu.doIT.utils.converter.DateConvert;
import com.jsu.doIT.vo.MessageVO;
import com.jsu.doIT.vo.UserVO;
import com.jsu.doIT.vo.UserinfoVO;

@Controller
@Scope("prototype")
public class MessageAction extends MyActionSupport<Message> {

	private static final long serialVersionUID = 4530955888862705501L;

	private List<UserVO> userVOs = new ArrayList<UserVO>();
	private Integer currentPage;
	private String userName;

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String UI() {
		return "UI";
	}

	public String number() {
		User user = getCurrentUser();
		try {
			if (user == null) { // 如果用户没有登录
				JSONprint("0");
			} else {
				List<Message> messages = messageService.findByReceiveNumber(user.getUserId());
				JSONprint(messages.size());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String get() {
		try {
			User user = getCurrentUser();
			List<Message> messages = messageService.findBySendIdAndRec(model.getMessageId(), user.getUserId());
			List<MessageVO> messageVOs = new ArrayList<MessageVO>();
			for (Message message : messages) {
				message.setStatus(1);
				messageService.update(message);
				messageVOs.add(messagePO2VO(message));
			}
			JSONprint(JSONSupport.json(messageVOs));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String getData() {
		User user = getCurrentUser();
		try {
			if (user == null) { // 如果用户没有登录
				JSONprint("0");
			} else {
				List<Message> messages = messageService.findByReceiveId(user.getUserId());
				List<User> users = new ArrayList<User>();
				for (Message message : messages) {
					User send = message.getUserBySendId();
					if (send.getUserId().compareTo(user.getUserId()) == 0) {
						send = message.getUserByReceiveId();
					}
					if (!users.contains(send)) {
						users.add(send);
						userVOs.add(PO2VO(send, message.getMessageContext()));
					}
				}
				JSONprint(JSONSupport.json(userVOs));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	/**
	 * Android
	 * 
	 * @return
	 */
	public String agetData() {
		try {
			ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
			String userName = ServletActionContext.getRequest().getAttribute("userName").toString();
			userName = new String(userName.getBytes("ISO-8859-1"), "UTF-8");
			User user = userService.findByUserName(userName);
			if (user == null) { // 如果用户没有登录
				JSONprint("0");
			} else {
				List<Message> messages = messageService.findByReceiveId(user.getUserId());
				List<User> users = new ArrayList<User>();
				for (Message message : messages) {
					User send = message.getUserBySendId();
					if (send.getUserId().compareTo(user.getUserId()) == 0) {
						send = message.getUserByReceiveId();
					}
					if (!users.contains(send)) {
						users.add(send);
						userVOs.add(PO2VO(send, message.getMessageContext()));
					}
				}
				JSONprint(JSONSupport.json(userVOs));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	public String send() {
		try {
			User userA = getCurrentUser();
			if (userA == null) { // 如果用户没有登录
				JSONprint("0");
			} else {
				if (model.getMessageContext() == null || model.getMessageContext().equals("")) {
					JSONprint("1");
					return null;
				}
				User userB = userService.findById(model.getMessageId());
				model.setSendTime(new Timestamp(new Date().getTime()));
				model.setUserBySendId(userA);
				model.setUserByReceiveId(userB);
				model.setStatus(0);
				messageService.save(model);
				MessageVO vo = messagePO2VO(model);
				JSONprint(JSONSupport.json(vo));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String asend() {
		try {
			ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
			userName = new String(userName.getBytes("ISO-8859-1"), "UTF-8");
			User userA = userService.findByUserName(userName);
			if (userA == null) { // 如果用户没有登录
				JSONprint("0");
			} else {
				if (model.getMessageContext() == null || model.getMessageContext().equals("")) {
					JSONprint("1");
					return null;
				}
				User userB = userService.findById(model.getMessageId());
				model.setSendTime(new Timestamp(new Date().getTime()));
				model.setUserBySendId(userA);
				model.setUserByReceiveId(userB);
				model.setStatus(0);
				messageService.save(model);
				MessageVO vo = messagePO2VO(model);
				JSONprint(JSONSupport.json(vo));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String robot() {
		try {
			User userA = getCurrentUser();
			if (userA == null) { // 如果用户没有登录
				JSONprint("0");
			} else {
				List<MessageVO> vos = new ArrayList<MessageVO>();
				if (model.getMessageContext() == null || model.getMessageContext().equals("")) {
					JSONprint("1");
					return null;
				}
				User userB = userService.findById(1);
				model.setSendTime(new Timestamp(new Date().getTime()));
				model.setUserBySendId(userA);
				model.setUserByReceiveId(userB);
				model.setStatus(0);
				messageService.save(model);
				vos.add(messagePO2VO(model));

				Message robot = new Message();
				robot.setUserBySendId(userB);
				robot.setUserByReceiveId(userA);
				robot.setStatus(0);
				robot.setMessageContext(Robot.robot(model.getMessageContext()));
				robot.setSendTime(new Timestamp(new Date().getTime() + 1000));
				messageService.save(robot);
				vos.add(messagePO2VO(robot));

				JSONprint(JSONSupport.json(vos));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String arobot() {
		try {
			ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
			String userName = ServletActionContext.getRequest().getAttribute("userName").toString();
			userName = new String(userName.getBytes("ISO-8859-1"), "UTF-8");
			User userA = userService.findByUserName(userName);
			if (userA == null) { // 如果用户没有登录
				JSONprint("0");
			} else {
				List<MessageVO> vos = new ArrayList<MessageVO>();
				if (model.getMessageContext() == null || model.getMessageContext().equals("")) {
					JSONprint("1");
					return null;
				}
				User userB = userService.findById(1);
				model.setSendTime(new Timestamp(new Date().getTime()));
				model.setUserBySendId(userA);
				model.setUserByReceiveId(userB);
				model.setStatus(0);
				messageService.save(model);
				vos.add(messagePO2VO(model));

				Message robot = new Message();
				robot.setUserBySendId(userB);
				robot.setUserByReceiveId(userA);
				robot.setStatus(0);
				robot.setMessageContext(Robot.robot(model.getMessageContext()));
				robot.setSendTime(new Timestamp(new Date().getTime() + 1000));
				messageService.save(robot);
				vos.add(messagePO2VO(robot));

				JSONprint(JSONSupport.json(vos));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String getMessage() {
		try {
			User user = getCurrentUser();
			List<Message> list = messageService.findBySendId(model.getMessageId(), user.getUserId(), currentPage); // 用messageId代替接收发送用户标识
			List<MessageVO> messageVOs = new ArrayList<MessageVO>();
			if (list.size() == 0) {
				JSONprint("0"); // 没有更多的数据了
				return null;
			}
			for (Message message : list) {
				if (message.getStatus() == 0) {
					message.setStatus(1);
					messageService.update(message);
				}
				messageVOs.add(messagePO2VO(message));
			}
			JSONprint(JSONSupport.json(messageVOs));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * Android
	 * 
	 * @return
	 */
	public String agetMessage() {
		try {
			ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
			String userName = ServletActionContext.getRequest().getAttribute("userName").toString();
			userName = new String(userName.getBytes("ISO-8859-1"), "UTF-8");
			User user = userService.findByUserName(userName);
			List<Message> list = messageService.findBySendId(model.getMessageId(), user.getUserId(), currentPage); // 用messageId代替接收发送用户标识
			List<MessageVO> messageVOs = new ArrayList<MessageVO>();
			if (list.size() == 0) {
				JSONprint("0"); // 没有更多的数据了
				return null;
			}
			for (Message message : list) {
				if (message.getStatus() == 0) {
					message.setStatus(1);
					messageService.update(message);
				}
				messageVOs.add(messagePO2VO(message));
			}
			JSONprint(JSONSupport.json(messageVOs));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public MessageVO messagePO2VO(Message message) {
		MessageVO messageVO = new MessageVO();
		try {
			BeanUtils.copyProperties(messageVO, message);
			messageVO.setTimes(DateConvert.datetoString(message.getSendTime()));
			User send = message.getUserBySendId();
			User user = getCurrentUser();
			if (0 == user.getUserId().compareTo(send.getUserId())) { // 如果是自己发送出去的
				messageVO.setStatus(1);
			} else { // 表示接收
				messageVO.setStatus(0);
			}
			UserVO userVO = new UserVO();
			BeanUtils.copyProperties(userVO, send);
			messageVO.setSend(userVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return messageVO;
	}

	public UserVO PO2VO(User user, String messageContext) {
		UserVO userVO = new UserVO();
		try {
			BeanUtils.copyProperties(userVO, user);
			Userinfo userinfo = user.getUserinfo();
			String userName = userVO.getUserName();
			userVO.setUserName(userName);
			UserinfoVO userinfoVO = new UserinfoVO();
			BeanUtils.copyProperties(userinfoVO, userinfo);
			userinfoVO.setUserregistTime(DateConvert.datetoString(userinfo.getRegistTime()));
			Useroffice useroffice = userinfo.getUseroffice();
			if (useroffice != null) {
				userinfoVO.setOfficeName(useroffice.getOfficeName());
			} else {
				userinfoVO.setOfficeName("暂无");
			}
			userVO.setFrost(messageContext);
			userVO.setUserinfoVO(userinfoVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userVO;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

}
