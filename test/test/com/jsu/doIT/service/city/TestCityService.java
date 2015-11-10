package test.com.jsu.doIT.service.city;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.service.city.CityService;

public class TestCityService {

	private static ApplicationContext context = null;
	private static CityService service = null;

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (CityService) context.getBean("cityService");
	}

	/**
	 * 测试根据省份编号获取城市集合
	 */
	@Test
	public void testfindByprovinceId() {
		System.out.println(service.findByprovinceId(1).size());
	}
}
