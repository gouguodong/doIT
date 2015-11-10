package test.com.jsu.doIT.service.post;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Postlabel;
import com.jsu.doIT.service.post.PostLabelService;

public class TestPostLabelService {

	private static ApplicationContext context = null;
	private static PostLabelService service = null;
	private static String words[] = { "PHP", "JAVA", "Html/CSS", "Maya", "Photoshop", "Premiere", "MongoDB", "Python",
			"JavaScript", "JQuery", "Html5", "Node.js", "Android", "Mysql", "Bootstrap", "AngularJS", "云计算", "Linux", "iOS",
			"Unity3D", "Cocos2d-x", "Go", "C++", "Oracle", "C", "WebApp", "前端工具", "CSS3", "大数据", "SQL Server" };

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (PostLabelService) context.getBean("postLabelService");
	}

	@Test
	public void testsave() {
		for (int i = 0; i < words.length; i++) {
			Postlabel entity = new Postlabel(words[i]);
			service.save(entity);
		}
	}
}
