package test.com.jsu.doIT.service.filter;

import java.util.Date;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Filter;
import com.jsu.doIT.service.admin.AdminService;
import com.jsu.doIT.service.admin.FilterService;
import com.jsu.doIT.utils.converter.DateConvert;

public class TestFilterService {

	private static ApplicationContext context = null;
	private static FilterService service = null;
	private static AdminService adminService = null;

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (FilterService) context.getBean("filterService");
		adminService = (AdminService) context.getBean("adminService");
	}

	@Test
	public void testsave() {
		Filter filter = new Filter();
		filter.setAdmin(adminService.findById(1));

		for (int i = 0; i < 24; i++) {
			filter.setAddTime(DateConvert.datetoString(new Date()).substring(0, 10));
			filter.setFilterContext("测试" + i);
			filter.setReplaceTo("**" + i);
			service.save(filter);
		}
	}

	@Test
	public void testfindFilterPage() {
//		System.out.println(service.findFilterPage(1, 10).getRecordList().size()); // 10
		System.out.println(service.findFilterPage(1, 10, "3").getRecordList().size()); // 10
	}
}
