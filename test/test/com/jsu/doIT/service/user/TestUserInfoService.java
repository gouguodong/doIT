package test.com.jsu.doIT.service.user;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.County;
import com.jsu.doIT.po.Title;
import com.jsu.doIT.po.Userinfo;
import com.jsu.doIT.service.admin.TitleService;
import com.jsu.doIT.service.city.CountyService;
import com.jsu.doIT.service.user.UserinfoService;

public class TestUserInfoService {
	private static ApplicationContext context = null;
	private static UserinfoService service = null;
//	private static UserService userService = null;
	private static CountyService countyService = null;
	private static TitleService titleService = null;
	private Userinfo userinfo = new Userinfo();

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (UserinfoService) context.getBean("userinfoService");
//		userService = (UserService) context.getBean("userService");
		countyService = (CountyService) context.getBean("countyService");
		titleService = (TitleService) context.getBean("titleService");
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
		Title title = titleService.findById(1);
		for (int i = 1; i <= 200; i++) {
//			User user = userService.findById(0 + 2);
//			userinfo.setUser(user);
//			userinfo.setRegistTime(new Date());
//			userinfo.setMessageNumber(0);
//			userinfo.setLoginNumber(0);
//			userinfo.setPostNumber(0);
//			userinfo.setReplyNumber(0);
//			userinfo.setStudyCourse(0);
//			userinfo.setStudyTime(0);
//			userinfo.setUserExp(0);
//			userinfo.setCodeNumber(0);
			
			userinfo = service.findById(i);
			userinfo.setTitle(title);

			service.update(userinfo);
		}
	}
	
	@Test
	public void testUpdate() {
		County county = countyService.findById(1);
		for (Userinfo userinfo : service.findAll()) {
			userinfo.setCounty(county);
			service.update(userinfo);
		}
	}
	
	@Test
	public void testData() {
		for (int i = 0; i < 200; i++) {
			userinfo = service.findById(i);
			if (userinfo != null) {
				userinfo.setCodeNumber(userinfo.getUsercodes().size());
				userinfo.setPostNumber(userinfo.getUser().getUserposts().size());
				userinfo.setReplyNumber(userinfo.getUser().getReplies().size());
				userinfo.setStudyCourse(userinfo.getUser().getUsercourses().size());
				service.update(userinfo);
			}
		}
	}

}
