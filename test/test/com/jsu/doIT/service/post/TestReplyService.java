package test.com.jsu.doIT.service.post;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Random;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Reply;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Userpost;
import com.jsu.doIT.service.post.ReplyService;
import com.jsu.doIT.service.post.UserPostService;

public class TestReplyService {

	private static ApplicationContext context = null;
	private static ReplyService service = null;
	private static UserPostService userPostService = null;
	// private IndexService indexService = new IndexService();
	private static Random random = new Random();

	// private String filePath =
	// "F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\";
	// private String indexPath =
	// "F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\lunece";

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (ReplyService) context.getBean("replyService");
		userPostService = (UserPostService) context.getBean("userPostService");
	}
	
	@Test
	public void testsave() {
		for (int i = 1; i < 24; i++) {
			Reply reply = new Reply();
			Userpost userpost = userPostService.findById(i);
			reply.setUserpost(userpost);
			reply.setReplyNumber(0);
			reply.setStatus(0);
			reply.setReplyTime(new Timestamp(new Date().getTime()));

			Integer maxNumber = random.nextInt(4) + 4;
			for (int j = 0; j < maxNumber; j++) {
				reply.setReplyContext("这里是第" + j + "条评论内容");
				reply.setUser(new User(random.nextInt(200) + 2));
				service.save(reply);
			}
			userpost.setReplyNumber(userpost.getReplyNumber() + maxNumber);
			userPostService.update(userpost);
		}
	}
}
