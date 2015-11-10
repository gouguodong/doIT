package test.com.jsu.doIT.service.feedback;

import java.sql.Timestamp;
import java.util.Date;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Feedback;
import com.jsu.doIT.po.User;
import com.jsu.doIT.service.feedback.FeedBackService;
import com.jsu.doIT.service.user.UserService;

public class TestFeedBackService {
	
	private static ApplicationContext context = null;
	private static FeedBackService service = null;
	private static UserService userService = null;

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (FeedBackService) context.getBean("feedBackService");
		userService = (UserService) context.getBean("userService");
	}
	
	/**
	 * 测试保存
	 */
	@Test
	public void testsave() {
		Feedback feedback = new Feedback("这里是意见反馈测试内容");
		User user = userService.findById(1);
		feedback.setFeedTime(new Timestamp(new Date().getTime()));
		feedback.setStatus(0);
		feedback.setUser(user);
		
		service.save(feedback);
	}
	
	/**
	 * 分页查找意见反馈
	 */
	@Test
	public void testfindPage() {
		System.out.println(service.findPage(1, 10).getRecordList().size());
	}

}
