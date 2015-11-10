package test.com.jsu.doIT.utils.converter;

import org.apache.commons.beanutils.BeanUtils;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Coursetype;
import com.jsu.doIT.service.course.CourseTypeService;
import com.jsu.doIT.vo.CoursetypeVO;

public class TestBaseConverter {

	private static ApplicationContext context = null;
	private static CourseTypeService service = null;
	private Coursetype coursetype;

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (CourseTypeService) context.getBean("courseTypeService");
	}

	@Test
	public void testPO2VO() throws Exception {
		coursetype = service.findById(1);
		CoursetypeVO coursetypeVO = new CoursetypeVO();
		BeanUtils.copyProperties(coursetypeVO, coursetype);
		System.out.println(coursetypeVO.getTypeName());
		System.out.println(coursetypeVO.getTypeId());
	}

}
