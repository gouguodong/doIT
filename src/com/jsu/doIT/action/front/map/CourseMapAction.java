package com.jsu.doIT.action.front.map;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Course;
import com.jsu.doIT.po.Recommend;
import com.jsu.doIT.utils.JSONSupport;
import com.jsu.doIT.utils.PublicMethod;
import com.jsu.doIT.vo.CourseVO;

@Controller
@Scope("prototype")
public class CourseMapAction extends MyActionSupport<Course> {

	private static final long serialVersionUID = 7861399636719260671L;

	private PageBean courses;

	public String map() {
		return "map";
	}
	
	public String getData() {
		try {
			List<Course> list = null;
			Integer courseId = model.getCourseId();
			if (model.getCourseId() == null || model.getCourseId() == 0) {
				courseId = 1;
			}
			List<Recommend> recommends = recommendService.findByCourseId(courseId);
			if (recommends != null) {
				Integer[] ids = recommendService.recommendByUserId(recommends.get(0).getUserId());
				list = courseService.findByIds(ids);
			}
			courses = new PageBean(1, 10, list.size(), list);
			coursePO2VO();
			JSONprint(JSONSupport.json(courses));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public void coursePO2VO() {
		List<Course> list = (List<Course>) courses.getRecordList(); // 获取课程集合
		List<CourseVO> courseVOs = new ArrayList<CourseVO>();
		// VO->PO
		for (Course course : list) {
			String imgURL = course.getCourseIndex();
			course.setCourseIndex(PublicMethod.changeImgURL(imgURL));// 修改图片地址使可显示
			CourseVO courseVO = new CourseVO();
			courseVO.copy(courseVO, course);// 复制
			courseVOs.add(courseVO);
		}
		courses.setRecordList(courseVOs);
	}
}
