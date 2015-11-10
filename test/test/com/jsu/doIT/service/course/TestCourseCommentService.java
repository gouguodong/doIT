package test.com.jsu.doIT.service.course;

import java.util.Random;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Course;
import com.jsu.doIT.po.Coursecomment;
import com.jsu.doIT.po.User;
import com.jsu.doIT.service.course.CourseCommentService;

public class TestCourseCommentService {

	private static ApplicationContext context = null;
	private static CourseCommentService service = null;
	private Random random = new Random();
	
	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (CourseCommentService) context.getBean("courseCommentService");
	}

	@Test
	public void testsave() {
		Coursecomment coursecomment = new Coursecomment();
		for (int i = 4; i < 17; i++) {
			coursecomment.setCourse(new Course(i));
			int maxNumber = (i % 3) + 5;
			for (int j = 0; j < maxNumber; j++) {
				Integer userId = random.nextInt(200) + 2;
				coursecomment.setAgreeNumber(0);
				coursecomment.setCommentInfo("这里是第" + j + "条评论内容");
				coursecomment.setUser(new User(userId));
				service.save(coursecomment);
			}
		}
	}
}
