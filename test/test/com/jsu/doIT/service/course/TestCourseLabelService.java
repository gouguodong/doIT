package test.com.jsu.doIT.service.course;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Courselabel;
import com.jsu.doIT.service.course.CourseLabelService;

public class TestCourseLabelService {

	private static ApplicationContext context = null;
	private static CourseLabelService service = null;
	private String[] words = {
			"循循善诱","抑扬顿挫","茅塞顿开","因材施教","循循善诱", "惟妙惟肖",
			"津津有味","绘声绘色","娓娓动听","妙语连珠","余音袅袅", "活神活现",
			"出口成章","行云流水","引人入胜","如痴如醉","思绪万千", "身临其境",
			"字字珠玑","一字千金","精彩绝伦","扣人心弦","韵味无穷", "精彩纷呈",
			"跌宕起伏","纷繁复杂","一波三折","妙趣横生","回肠荡气", "文采飞扬",
			"文不加点","辞采华美"
	};
	
	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (CourseLabelService) context.getBean("courseLabelService");
	}

	@Test
	public void testsave() {
		Courselabel courselabel = new Courselabel();
		courselabel.setLabelValue(0);
		for (int i = 0; i < words.length; i++) {
			courselabel.setLabelName(words[i]);
			service.save(courselabel);
		}
	}
}
