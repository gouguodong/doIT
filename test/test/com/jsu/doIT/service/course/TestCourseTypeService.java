package test.com.jsu.doIT.service.course;

import java.util.List;
import java.util.Set;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Coursetype;
import com.jsu.doIT.service.course.CourseTypeService;

public class TestCourseTypeService {

	private static ApplicationContext context = null;
	private static CourseTypeService service = null;
	private Coursetype coursetype = new Coursetype();

	static {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		service = (CourseTypeService) context.getBean("courseTypeService");
	}

	/**
	 * 测试保存
	 */
	@Test
	public void testSave() {
		Coursetype father = service.findById(5);
		coursetype.setCoursetype(father);
		coursetype.setTypeName("Premiere");
		service.save(coursetype);
	}

	/**
	 * 测试删除
	 */
	public void testDelete() {
		coursetype = service.findById(1);
		service.delete(coursetype);
	}

	/**
	 * 测试更新
	 */
	@Test
	public void testUpdate() {
		coursetype = service.findById(1);
		coursetype.setTypeName("测试修改");
		service.update(coursetype);
	}

	/**
	 * 测试根据ID获取一个CourseType对象
	 */
	@Test
	public void testFindById() {
		coursetype = service.findById(1);
		System.out.println(coursetype.toString());
	}

	/**
	 * 测试根据一组Id查找一组CourseType对象
	 */
	@Test
	public void testFindByIds() {
		Integer[] ids = { 1, 2, 3 };
		List<Coursetype> coursetypes = service.findByIds(ids);
		for (Coursetype coursetype : coursetypes) {
			System.out.println(coursetype.getTypeName());
		}
	}
	
	/**
	 * 测试根据属性名来查找一组对象
	 */
	@Test
	public void testFindByproperty() {
		List<Coursetype> coursetypes = service.findByProperty("typeName", "前端开发");
		for (Coursetype coursetype : coursetypes) {
			System.out.println(coursetype.getTypeName());
			for (Coursetype type : service.findByProperty("coursetype.typeId", coursetype.getTypeId())) {
				System.out.println("--" + type.getTypeName());
			}
		}
	}
	
	/**
	 * 测试查找所有
	 */
	@Test
	public void testFindAll() {
		List<Coursetype> coursetypes = service.findAll();
		for (Coursetype coursetype : coursetypes) {
			System.out.println(coursetype.getTypeName());
		}
	}
	
	/**
	 * 测试查找所有父类型
	 */
	@Test
	public void testfindFatherType() {
		List<Coursetype> coursetypes = service.findFatherType();
		for (Coursetype coursetype : coursetypes) {
			System.out.println(coursetype.getTypeName());
		}
	}
	
	/**
	 * 测试根据父类型编号查找他所有的子类型
	 */
	@Test
	public void testfindChlidByFatherId() {
		Set<Coursetype> coursetypes = service.findChlidByFatherId(1);
		for (Coursetype coursetype : coursetypes) {
			System.out.println(coursetype.getTypeName());
		}
	}
	
	/**
	 * 查找所有二级课程类型
	 */
	@Test
	public void testfindAllChildType() {
		List<Coursetype> coursetypes = service.findAllChildType();
		for (Coursetype coursetype : coursetypes) {
			System.out.println(coursetype.getTypeName());
		}
	}
	
	/**
	 * 测试分页查找所有
	 */
	@Test
	public void testfindChildTypePage() {
		System.out.println(service.findChildTypePage(1, 10).getRecordList().size()); // 10
//		System.out.println(service.findChildTypePage(1, 10, 5).getRecordList().size()); // 3
	}
	
	/**
	 * 根据课程名查找课程
	 */
	@Test
	public void testfindByTypeName() {
		System.out.println(service.findByTypeName("前端开发"));
	}
}
