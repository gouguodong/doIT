package test.com.jsu.doIT.service.message;

import java.util.Random;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Agree;
import com.jsu.doIT.po.Coursecomment;
import com.jsu.doIT.po.User;
import com.jsu.doIT.service.post.AgreeService;

public class TestAgreeService {
	
	private static ApplicationContext context = null;
	private static AgreeService service = null;
	private static Random random = new Random();

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (AgreeService) context.getBean("agreeService");
	}
	
	@Test
	public void testsave() {
		for (int i = 0; i < 50; i++) {
			Agree agree = new Agree();
			agree.setCoursecomment(new Coursecomment(random.nextInt(91) + 1));
			Integer agreeNumber = random.nextInt(4) + 2;
			for (int j = 0; j < agreeNumber; j++) {
				agree.setUser(new User(random.nextInt(201) + 2));
				service.save(agree);
			}
		}
	}
}
