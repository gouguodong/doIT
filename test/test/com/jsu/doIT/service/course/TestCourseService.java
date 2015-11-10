package test.com.jsu.doIT.service.course;

import java.sql.Timestamp;
import java.util.Date;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Course;
import com.jsu.doIT.po.Coursetype;
import com.jsu.doIT.po.Teacher;
import com.jsu.doIT.service.course.CourseService;

public class TestCourseService {

	private static ApplicationContext context = null;
	private static CourseService service = null;
	// private Course course = new Course();

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (CourseService) context.getBean("courseService");
	}

	@Test
	public void testsave() {
		Course course = new Course();
		for (int i = 1; i < 12; i++) {
			course.setCourseAd("这是第" + i + "门课程的宣语");
			course.setCourseDate(new Timestamp(new Date().getTime()));
			course.setCourseIndex("frontstage/img/test/course/" + i + ".jpg");
			course.setCourseInfo("这里是第" + i + "门课程简介的内容");
			course.setCourseName("第" + i + "门课程测试数据");
			course.setCourseTime("4小时20分钟");
			course.setCoursetype(new Coursetype(i));
			course.setCourseLevel(i % 2 == 0 ? "初级" : "中级");
			course.setUpdateTo("1-1");
			course.setStudyNumber(0);
			course.setTeacher(new Teacher((i % 5) + 1));
			course.setUpdateTime(new Timestamp(new Date().getTime()));
			service.save(course);
		}
	}

	@Test
	public void testfindById() {
		System.out.println(service.findById(1));
		// System.out.println(service.findById(5).getCourselabelvalues().size());
	}

	/**
	 * 测试分页查找所有课程
	 */
	@Test
	public void testfindAllCourse() {
		System.out.println(service.findAllCourse(1, 9).getRecordCount());
	}

	/**
	 * 测试根据类型编号分页课程
	 */
	@Test
	public void testfindCourseByTypeId() {
		System.out.println(service.findCourseByTypeId(1, 1, 4).getRecordCount());
	}

	/**
	 * 测试分页最热课程
	 */
	@Test
	public void testgetHotCourses() {
		System.out.println(service.getHotCourses(1, 9).getRecordCount());
	}

	/**
	 * 测试根据教师编号查找该教师的所有课程
	 */
	@Test
	public void testfindCourseByTeacherId() {
		System.out.println(service.findCourseByTeacherId(2).size());
	}
	
	@Test
	public void testUpdate() {
		for (int i = 1; i < 17; i++) {
			if (i == 3) {
				continue;
			}
			Course course = service.findById(i);
			if (course.getUsercourses() != null) {
				course.setStudyNumber(course.getUsercourses().size());				
			}
			service.update(course);
		}
	}

}
