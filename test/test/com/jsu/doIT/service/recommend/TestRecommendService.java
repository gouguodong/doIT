package test.com.jsu.doIT.service.recommend;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.service.recommend.RecommendService;

public class TestRecommendService {

	private static ApplicationContext context = null;
	private static RecommendService service = null;

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (RecommendService) context.getBean("recommendService");
	}

	/**
	 * 测试根据用户标识推荐用户
	 */
	@Test
	public void testRecommendByUserId() {
		Integer[] courseIds = service.recommendByUserId(2);
		System.out.println(courseIds.length);
	}
}
