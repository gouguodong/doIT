package test.com.jsu.doIT.service.head;

import java.sql.Timestamp;
import java.util.Date;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Head;
import com.jsu.doIT.service.admin.HeadService;

public class TestHeadService {

	private static ApplicationContext context = null;
	private static HeadService service = null;

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (HeadService) context.getBean("headService");
	}

	/**
	 * 分页
	 */
	@Test
	public void testfindPage() {
		System.out.println(service.findPage(1, 8).getRecordList().size());
	}

	@Test
	public void testsave() {
		Head head = new Head();
		for (int i = 1; i < 10; i++) {
			head.setAddTime(new Timestamp(new Date().getTime()));
			head.setHeadUrl("frontstage/img/test/head/" + i + ".jpg");
			service.save(head);
		}
	}

}
