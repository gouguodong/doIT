package test.com.jsu.doIT.service.user;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.User;
import com.jsu.doIT.service.user.UserService;
import com.jsu.doIT.utils.PublicMethod;

public class TestUserService {
	private static ApplicationContext context = null;
	private static UserService service = null;
	private User user = new User();

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (UserService) context.getBean("userService");
	}

	/**
	 * 测试保存用户
	 */
	@Test
	public void testSave() {
		// user.setUserName("小智");
		// user.setUserEmail("izhi@izhi.com");
		// user.setUserTel("15074480723");
		// user.setUserPwd(PublicMethod.md5("test"));
		//
		// service.save(user);
		for (int i = 0; i < 200; i++) {
			user.setUserName("test" + i);
			user.setUserEmail(user.getUserName() + "@izhi.com");
			user.setUserPwd(PublicMethod.md5("test"));
			user.setStatus(0);
			service.save(user);
		}
	}

	@Test
	public void testLogin() {
		// user = service.login("小智", "test"); //用户名登录
		// user = service.login("izhi@izhi.com", "test"); //邮箱登录
		user = service.login("15074480723", "test"); // 手机登录
		System.out.println(user.getUserId());
	}

	/**
	 * 测试验证邮箱/手机/用户名
	 */
	@Test
	public void testRemote() {
		// System.out.println(service.remoteName("小智")); // true
		System.out.println(service.remoteName("小智1")); // false
	}

	/**
	 * 分页
	 */
	@Test
	public void testfindPage() {
		// System.out.println(service.findPage(1, 10, null, null,
		// "").getRecordList().size(), 1); // 10
		// System.out.println(service.findPage(1, 10, new Date(), null,
		// "").getRecordList().size(), 1); // 0
		System.out.println(service.findPage(1, 10, null, null, "小智", 1).getRecordList().size()); // 1
	}
}
