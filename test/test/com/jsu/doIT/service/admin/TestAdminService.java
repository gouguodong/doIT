package test.com.jsu.doIT.service.admin;

import java.sql.Timestamp;
import java.util.Date;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Admin;
import com.jsu.doIT.service.admin.AdminService;
import com.jsu.doIT.utils.PublicMethod;

public class TestAdminService {

	private static ApplicationContext context = null;
	private static AdminService service = null;

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (AdminService) context.getBean("adminService");
	}

	/**
	 * 测试保存
	 */
	@Test
	public void testSave() {
		Admin admin = new Admin();
		admin.setAddTime(new Timestamp(new Date().getTime()));
		admin.setAdminName("admin");
		admin.setAdminPwd(PublicMethod.md5("admin"));
		service.save(admin);
	}

	/**
	 * 测试登录
	 */
	@Test
	public void testLogin() {
		System.out.println(service.login("admin", "admin"));
	}
}
