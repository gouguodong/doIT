package test.com.jsu.doIT.service.message;

import java.sql.Timestamp;
import java.util.Date;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Message;
import com.jsu.doIT.po.User;
import com.jsu.doIT.service.message.MessageService;
import com.jsu.doIT.service.user.UserService;

public class TestMessageService {

	private static ApplicationContext context = null;
	private static MessageService service = null;
	private static UserService userService = null;

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (MessageService) context.getBean("messageService");
		userService = (UserService) context.getBean("userService");
	}

	@Test
	public void testfindByReceiveId() {
		System.out.println(service.findByReceiveId(2).size());
	}
	
	@Test
	public void testfindBySendId() {
		System.out.println(service.findBySendId(1, 2, 1).size());
	}

	@Test
	public void testsave() {
		User send = new User(1);
		for (int i = 2; i <= 201; i++) {
			User re = userService.findById(i);
			Message message = new Message();
			message.setStatus(0);
			message.setMessageContext("Hi，亲爱的" + re.getUserName() + "，欢迎你来到爱智网，如果你在学习的过程中有任何建议或问题，可以发消息给我！");
			message.setSendTime(new Timestamp(new Date().getTime()));
			message.setUserByReceiveId(re);
			message.setUserBySendId(send);
			service.save(message);
		}
	}
	
}
