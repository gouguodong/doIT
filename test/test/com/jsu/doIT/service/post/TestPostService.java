package test.com.jsu.doIT.service.post;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Random;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.lucene.dao.IndexService;
import com.jsu.doIT.po.Postlabel;
import com.jsu.doIT.po.Postresource;
import com.jsu.doIT.po.Posttype;
import com.jsu.doIT.po.Resourcetype;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Userpost;
import com.jsu.doIT.service.post.PostResourceService;
import com.jsu.doIT.service.post.UserPostService;
import com.jsu.doIT.utils.FileOperation;

public class TestPostService {

	private static ApplicationContext context = null;
	private static UserPostService service = null;
	private static PostResourceService postResourceService = null;
	private IndexService indexService;
	private static Random random = new Random();

	private String filePath = "F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\";
	private String indexPath = "F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\lunece";

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (UserPostService) context.getBean("userPostService");
		postResourceService = (PostResourceService) context.getBean("postResourceService");
	}

	@Test
	public void testsave() {
//		test(14);
//		test(15);
//		test(16);
//		test(17);
//		test(18);
//		test(19);
		test(20);
	}

	public void test(Integer i) {
		try {
			Userpost userpost = new Userpost();
			String context = "";
			userpost.setClickNumber(0);
			userpost.setPostContext("");
			userpost.setPostlabel(new Postlabel(random.nextInt(30) + 1));
			if (random.nextInt() % 4 == 0) {
				Postresource postresource = new Postresource();
				postresource.setResourcetype(new Resourcetype(2));
				postresource.setResourceUrl("frontstage/resource/test/test.rar");
				postresource.setUploadTime(new Timestamp(new Date().getTime()));
				postResourceService.save(postresource);
				userpost.setPostresource(postresource);
				userpost.setPostTitle("第" + i + "个是分享帖子");
				context = "第" + i + "个是分享帖子的内容";
				userpost.setPosttype(new Posttype(2));
			} else {
				Postresource postresource = new Postresource();
				postresource.setResourcetype(new Resourcetype(2));
				userpost.setPostTitle("第" + i + "个是问答帖子");
				context = "第" + i + "个是问答帖子的内容";
				userpost.setPosttype(new Posttype(1));
			}
			Long time = new Date().getTime();
			userpost.setPostTime(new Timestamp(time));
			User user = new User(random.nextInt(200) + 2);
			String myFilePath = filePath + user.getUserId();
			FileOperation.contentToTxT(myFilePath, time + "", time + ".txt", context);
			userpost.setUser(user);
			userpost.setPostUrl(myFilePath + "\\" + time + "\\" + time + ".txt");
			userpost.setReplyNumber(0);
			indexService = new IndexService();
			indexService.save(myFilePath + "\\" + time + "\\" + time + ".txt", indexPath);
			service.save(userpost);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
