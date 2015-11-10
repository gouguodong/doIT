package test.com.jsu.doIT.service.message;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Random;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Userrelation;
import com.jsu.doIT.service.friend.UserRelationService;

public class TestFriendService {

	private static ApplicationContext context = null;
	private static UserRelationService service = null;
	private static Userrelation userrelation = new Userrelation();
	private static Random random = new Random();

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (UserRelationService) context.getBean("userRelationService");
	}

	@Test
	public void testfindbyUserId() {
		System.out.println(service.findbyUserId(2).size());
	}
	
	@Test
	public void testsave() {
		for (int i = 0; i < 50; i++) {
			int Aid = random.nextInt(200) + 2;
			User userA = new User(Aid);
			for (int j = 2; j <= 10; j++) {
				userrelation.setUserByUserIdA(userA);
				
				int Bid = random.nextInt(200) + 2;
				while (Aid == Bid) {
					Bid = random.nextInt(200) + 2;
				}
				User userB = new User(Bid);
				userrelation.setUserByUserIdB(userB);
				userrelation.setRelationTime(new Timestamp(new Date().getTime()));
				service.save(userrelation);
				
				userrelation.setUserByUserIdA(userB);
				userrelation.setUserByUserIdB(userA);
				service.save(userrelation);
			}
		}
	}
	
}
