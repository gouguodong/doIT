package test.com.jsu.doIT.service.course;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Section;
import com.jsu.doIT.po.Voide;
import com.jsu.doIT.service.voide.VoideService;

public class TestVoideService {

	private static ApplicationContext context = null;
	private static VoideService service = null;

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (VoideService) context.getBean("voideService");
	}

	@Test
	public void testsave() {
		Voide voide = new Voide();
		voide.setVoideUrl("frontstage/video/demo.mp4");
		voide.setVoideTime(4);
		for (int i = 1; i < 59; i++) {
			voide.setSection(new Section(i));
			int maxNumber = (i % 3) + 2;
			for (int j = 1; j < maxNumber; j++) {
				voide.setVoideCode(j + "");
				voide.setVoideName("第" + j + "个视频");
				service.save(voide);
			}
		}
	}
	
	@Test
	public void testfindByCourseId() {
		System.out.println(service.findByCourseId(1, 2, 1).getVoideName());
	}
}
