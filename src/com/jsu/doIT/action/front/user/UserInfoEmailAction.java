package com.jsu.doIT.action.front.user;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Userinfo;
import com.jsu.doIT.utils.PublicFieldName;
import com.jsu.doIT.utils.PublicMethod;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class UserInfoEmailAction extends MyActionSupport<Userinfo> {

	private static final long serialVersionUID = 4036265546992485713L;
	private User user;
	private String userEmail;

	public User getUser() {
		return user;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	/**
	 * 进入邮箱验证页面
	 * 
	 * @return
	 */
	public String UI() {
		user = getCurrentUser();
		if (user == null) { // 没有登录
			return "notLogin";
		}
		return "UI";
	}

	/**
	 * 更改邮箱并发送邮件
	 * 
	 * @return
	 */
	public String send() {
		user = getCurrentUser();
		if (userEmail == null || userEmail.equals("undefined")) {
			userEmail = user.getUserEmail();
		}
		userEmail = userEmail.trim();
		if (PublicMethod.verifyEmail(userEmail)) { // 如果邮箱是合法的邮箱
			if (user.getStatus() == 1 && user.getUserEmail().equals(userEmail)) {
				// 如果用户已验证、且修改后的邮箱仍是之前的邮箱
				JSONprint("请不要重复验证");
				return null;
			}
			user.setUserEmail(userEmail);
			user.setStatus(0);
			userService.update(user); // 更新用户信息
			String email = userEmail; // 用户的邮箱
			String sendUserEmail = "a491158129@163.com";
			String sendUserEamilPwd = "zhuanshu";
			String subject = "爱智网邮箱开通确认";
			String emailContent = "感谢您注册爱智网账号!<br/>你的登录名为: "
					+ user.getUserName()
					+ "<br/>点击以下链接，开始学习之旅吧："
					+ "<br/><a href='http://localhost:8080/izhi/userInfo/emailverify.action?userId="
					+ user.getUserId()
					+ "'>http://izhi.com/account/active?user=u014327328&active=7eaa68d05a4e3b2717c9e70780e83403&from=http%3a%2f%2fwww.csdn.net%2f</a>";
			// String msg = email.substring(email.lastIndexOf("@") + 1);
			// System.out.println("msg=" + msg);
			try {
				String serverUrl = sendUserEmail.substring(sendUserEmail.lastIndexOf("@") + 1);
				String sendUserEmailName = sendUserEmail.substring(0, sendUserEmail.lastIndexOf("@"));
				Properties props = new Properties();
				props.setProperty("mail.host", "smtp." + serverUrl);
				props.setProperty("mail.transport.protocol", "smtp");
				Session session = Session.getInstance(props);
				session.setDebug(true);// 发送过程打到控制台
				// 1、得到发送邮件的对象
				Transport ts;
				ts = session.getTransport();
				// 2、连接服务器
				ts.connect("smtp." + serverUrl, sendUserEmailName, sendUserEamilPwd);
				// 3、创建邮件
				MimeMessage message = new MimeMessage(session);// 创建了一封邮件
				// message.setFrom(new InternetAddress(sendUserEmail));//设置发件人
				// 设置自定义发件人昵称
				String nick = "小智";
				try {
					nick = javax.mail.internet.MimeUtility.encodeText("爱智网");
				} catch (Exception e) {
					e.printStackTrace();
				}
				message.setFrom(new InternetAddress(nick + " <" + sendUserEmail + ">"));
				message.setRecipients(Message.RecipientType.TO, email);// 设置收件人的邮箱
				message.setSubject(subject);// 设置主题
				// 创建正文：文本
				MimeBodyPart text = new MimeBodyPart();
				text.setContent(emailContent, "text/html;charset=UTF-8");

				// 把图片和正文结合成新的BodyPart //设置关系
				MimeMultipart mm1 = new MimeMultipart();
				mm1.addBodyPart(text);
				// 改成Bodypart
				MimeBodyPart content = new MimeBodyPart();
				content.setContent(mm1);
				// 把新的multipart和附件结合成更新的multipart
				MimeMultipart mm = new MimeMultipart();
				mm.addBodyPart(content);
				message.setContent(mm);
				Date d = new Date();
				message.setSentDate(d);
				message.saveChanges();
				// 4、发送邮件
				ts.sendMessage(message, message.getAllRecipients());
				// 5、关闭邮件发送对象
				ts.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			JSONprint("0");
		} else { // 如果不是合法的邮箱
			JSONprint("请输入合法有效的邮箱");
		}
		return null;
	}

	/**
	 * 邮箱验证
	 * 
	 * @return
	 */
	public String verify() {
		user = userService.findById(model.getUserId());
		user.setStatus(1);
		userService.update(user);
		ActionContext.getContext().getSession().put(PublicFieldName.USER, user);
		return "verify";
	}
}
