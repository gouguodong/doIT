package test.com.jsu.doIT.service.user;

import java.util.HashSet;
import java.util.Random;
import java.util.Set;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Course;
import com.jsu.doIT.po.Study;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Usercourse;
import com.jsu.doIT.service.course.CourseService;
import com.jsu.doIT.service.user.RelationTypeService;
import com.jsu.doIT.service.user.StudyService;
import com.jsu.doIT.service.user.UserCourseService;

public class TestUserCourseService {
	private static ApplicationContext context = null;
	private static UserCourseService service = null;
	private static RelationTypeService relationTypeService = null;
	private static StudyService studyService = null;
	private static CourseService courseService = null;
	private static Random random = new Random();

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (UserCourseService) context.getBean("userCourseService");
		relationTypeService = (RelationTypeService) context.getBean("relationTypeService");
		courseService = (CourseService) context.getBean("courseService");
		studyService = (StudyService) context.getBean("studyService");
	}

	/**
	 * 测试根据关系类型编号，用户编号查找用户关注课程
	 */
	@Test
	public void testfindCourse() {
		System.out.println(service.findAttentionCourse(1, 9, 1, 1).getRecordCount());
	}

	@Test
	public void testfindById() {
		System.out.println(service.findById(1).getCourse().getCourseName());
	}

	@Test
	public void testsave() {
		Usercourse entity = new Usercourse();
		for (int i = 1; i < 51; i++) {
			Study study = studyService.findById(i);
			User user = study.getUser();
			entity.setStudy(study);
			entity.setUser(user);

			Integer maxNumber = random.nextInt(4) + 2;
			for (int j = 0; j < maxNumber; j++) {
				Integer courseId = random.nextInt(16) + 1;
				while (courseId - 3 == 0) {
					courseId = random.nextInt(16) + 1;
				}
				Course course = courseService.findById(courseId);
				entity.setCourse(course);
				entity.setRelationtype(relationTypeService.findById(random.nextInt(3) + 1)); // 在学、关注
				entity.setStudyTime("0小时" + j * 10 + "分钟");
				service.save(entity);
			}
		}
	}

	@Test
	public void test() {
		Course course = courseService.findById(5);
		Set<Usercourse> set = new HashSet<Usercourse>();
		Usercourse usercourse = service.findById(1);
		set.add(usercourse);
		course.setUsercourses(set);
		courseService.update(course);
	}
}
