package test.com.jsu.doIT.service.message;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Random;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Applyfriend;
import com.jsu.doIT.po.User;
import com.jsu.doIT.service.friend.ApplyfriendService;
import com.jsu.doIT.service.user.UserService;

public class TestApplyFriendService {

	private static ApplicationContext context = null;
	private static ApplyfriendService service = null;
	private static UserService userService = null;
	private static Random random = new Random();

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (ApplyfriendService) context.getBean("applyfriendService");
		userService = (UserService) context.getBean("userService");
	}
	
	/**
	 * 测试保存、然后保存到消息中
	 */
	@Test
	public void testsave() {
		for (int i = 0; i < 50; i++) {
			Applyfriend applyfriend = new Applyfriend();
			applyfriend.setContext("嘿、加个好友呗");
			applyfriend.setReplayTime(new Timestamp(new Date().getTime()));
			applyfriend.setStatus(0);
			int AId = random.nextInt(200) + 2;
			int BId = random.nextInt(200) + 2;
			while (AId == BId) {
				BId = random.nextInt(200) + 2;
			}
			User userA = userService.findById(AId);
			User userB = userService.findById(BId);
			applyfriend.setUserByApplyUserId(userA);
			applyfriend.setUserByRecUserId(userB);
			service.save(applyfriend);
		}
	}
	
	@Test
	public void testfindByReceiveId() {
		System.out.println(service.findByReceiveId(2).size());
	}
}
