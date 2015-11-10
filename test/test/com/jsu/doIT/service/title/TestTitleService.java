package test.com.jsu.doIT.service.title;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.service.admin.TitleService;

public class TestTitleService {

	private static ApplicationContext context = null;
	private static TitleService service = null;

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (TitleService) context.getBean("titleService");
	}

	/**
	 * 测试分页
	 */
	@Test
	public void testfindTitlePage() {
//		System.out.println(service.findTitlePage(1, 10).getRecordList().size()); // 10
		System.out.println(service.findTitlePage(1, 10, "超能力").getRecordList().size()); // 4
	}

}
