package test.com.jsu.doIT.service.course;

import java.sql.Timestamp;
import java.util.Date;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Course;
import com.jsu.doIT.po.Section;
import com.jsu.doIT.service.course.SectionService;

public class TestSectionService {
	private static ApplicationContext context = null;
	private static SectionService service = null;

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (SectionService) context.getBean("sectionService");
	}

	@Test
	public void testsave() {
		for (int i = 6; i < 17; i++) {
			Section section = new Section();
			section.setCourse(new Course(i));
			int maxNumber = (i % 4) + 3;
			for (int j = 1; j <= maxNumber; j++) {
				section.setOpenTime(new Timestamp(new Date().getTime()));
				section.setSectionCode(j);
				section.setSectionDesc("这是第" + (i - 5) + "门课程的第" + j + "个章节描述");
				section.setSectionName("第" + j + "章 第" + j + "章名称");
				service.save(section);
			}
		}
	}

	/**
	 * 测试根据课程编号查找所有课程章节
	 */
	@Test
	public void testfindByCourseId() {
		System.out.println(service.findByCourseId(1).size());
	}
	
	@Test
	public void testfindByCourseIdAndSectoinCode() {
		System.out.println(service.findByCourseIdAndSectoinCode(1, 1).getSectionName());
	}
}
