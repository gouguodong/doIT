package com.jsu.doIT.action.front.mail;

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

/**
 * 发送邮件
 * 
 * @author hadoop
 * 
 */
@Controller
@Scope(value = "prototype")
public class SendEmailAction extends MyActionSupport<User> {

	private static final long serialVersionUID = -3802833160122165999L;

	public String send() throws Exception {
		model = getCurrentUser(); // 获取当前的登陆用户
		String email = model.getUserEmail(); // 用户的邮箱
		String sendUserEmail = "a491158129@163.com";
		String sendUserEamilPwd = "zhuanshu";
		String subject = "爱智网邮箱开通确认";
		String emailContent = "感谢您注册趣爱智网账号!<br/>你的登录名为: "
				+ model.getUserName()
				+ "<br/>点击以下链接，开始学习之旅吧："
				+ "<br/><a href='http://localhost:8080/izhi/userInfo/emailverify.action?userId=?"
				+ model.getUserId()
				+ "'>http://izhi.com/account/active?user=u014327328&active=7eaa68d05a4e3b2717c9e70780e83403&from=http%3a%2f%2fwww.csdn.net%2f</a>";
		String msg = email.substring(email.lastIndexOf("@") + 1);
		System.out.println("msg=" + msg);
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
			String nick = "";
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
		return null;
	}

}
