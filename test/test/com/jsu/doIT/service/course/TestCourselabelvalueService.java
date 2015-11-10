package test.com.jsu.doIT.service.course;

import java.util.Random;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Course;
import com.jsu.doIT.po.Courselabel;
import com.jsu.doIT.po.Courselabelvalue;
import com.jsu.doIT.service.course.CourselabelvalueService;

public class TestCourselabelvalueService {

	private static ApplicationContext context = null;
	private static CourselabelvalueService service = null;
	private Random random = new Random();

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (CourselabelvalueService) context.getBean("courselabelvalueService");
	}

	@Test
	public void testsave() {
		for (int i = 4; i < 12; i++) {
			Course course = new Course(i);
			Integer maxNumber = random.nextInt(4) + 2;
			for (int j = 0; j < maxNumber; j++) {
				Courselabel label = new Courselabel(random.nextInt(32) + 1);
				service.save(new Courselabelvalue(course, label, 0));
			}
		}
	}
}
