package test.com.jsu.doIT.service.city;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.service.city.CountyService;

public class TestCountyService {

	private static ApplicationContext context = null;
	private static CountyService service = null;

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (CountyService) context.getBean("countyService");
	}
	
	/**
	 * 测试根据城市编号获取区县集合
	 */
	@Test
	public void testfindByCityId() {
		System.out.println(service.findByCityId(1).size());
	}
}
