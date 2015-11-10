package test.com.jsu.doIT.service.user;

import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.Set;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Study;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Usercourse;
import com.jsu.doIT.service.user.StudyService;
import com.jsu.doIT.utils.converter.DateConvert;

public class TestStudyService {

	private static ApplicationContext context = null;
	private static StudyService service = null;
	private static Random random = new Random();

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (StudyService) context.getBean("studyService");
	}

	@Test
	public void testsave() {
		for (int i = 0; i < 50; i++) {
			Study study = new Study();
			Integer userId = random.nextInt(200) + 2;
			study.setUser(new User(userId));
			study.setStudyDate(new Date());
			study.setStudyTime(0);
			service.save(study);
		}
	}

	@Test
	@SuppressWarnings("unchecked")
	public void testfindStudyByUserId() {
		PageBean studys = service.findStudyByUserId(2, 2, 1, 10);
		List<Study> list = (List<Study>) studys.getRecordList();
		for (Study study : list) {
			System.out.println(DateConvert.datetoString(study.getStudyDate()).substring(0, 10));
			Set<Usercourse> usercourses = study.getUsercourses();
			for (Usercourse usercourse : usercourses) {
				System.out.println("****" + usercourse.getCourse().getCourseName());
			}
		}
	}
	
	@Test
	public void testfindByUserIdAndTime() {
		System.out.println(service.findByUserIdAndTime(2, new Date()));
	}
}
