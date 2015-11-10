package com.jsu.doIT.action.front.course;

import java.util.List;
import java.util.Set;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Course;
import com.jsu.doIT.po.Coursetype;

/**
 * 课程首页
 * 
 * @author hadoop
 * 
 */

@Controller
@Scope("prototype")
public class CourseIndxeAction extends MyActionSupport<Course> {

	private static final long serialVersionUID = 3877550984809224760L;
	private List<Coursetype> coursetypes;
	private PageBean pageBean;

	public List<Coursetype> getCoursetypes() {
		return coursetypes;
	}

	public PageBean getPageBean() {
		return pageBean;
	}

	public String index() {
		// 加载左边所有父课程类型
		coursetypes = courseTypeService.findFatherType();
		// 加载每一个父类型所对应的子课程类型
		for (Coursetype coursetype : coursetypes) {
			Set<Coursetype> child = courseTypeService.findChlidByFatherId(coursetype.getTypeId());
			coursetype.setCoursetypes(child);
		}
		return SUCCESS;
	}

	public String search() {
		// 加载左边所有父课程类型
		coursetypes = courseTypeService.findFatherType();
		pageBean = courseService.findAllCourse(1, 9, null, model.getCourseName());
		return "search";
	}

}
