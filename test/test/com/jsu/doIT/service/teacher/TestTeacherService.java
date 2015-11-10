package test.com.jsu.doIT.service.teacher;

import java.sql.Timestamp;
import java.util.Date;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Teacher;
import com.jsu.doIT.service.teacher.TeacherService;
import com.jsu.doIT.utils.PublicMethod;

public class TestTeacherService {

	private static ApplicationContext context = null;
	private static TeacherService service = null;
	private Teacher teacher = new Teacher();

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (TeacherService) context.getBean("teacherService");
	}

	/**
	 * 测试保存
	 */
	@Test
	public void testSave() {
		teacher.setCourseNumber(0);
		teacher.setRegistTime(new Timestamp(new Date().getTime()));
		teacher.setTeacherName("Meshare_huang");
		teacher.setTeacherPwd(PublicMethod.md5("test"));
		teacher.setTeacherInfo("10年开发经验，现在从事智能设备方向工作，曾从事培训行业 ，乐于分享，技术控 。");
		service.save(teacher);
	}
}
