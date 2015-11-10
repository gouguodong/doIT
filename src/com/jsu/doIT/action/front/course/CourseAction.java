package com.jsu.doIT.action.front.course;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Course;
import com.jsu.doIT.po.Coursetype;
import com.jsu.doIT.po.Relationtype;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Usercourse;
import com.jsu.doIT.utils.JSONSupport;
import com.jsu.doIT.utils.PublicMethod;
import com.jsu.doIT.vo.CourseVO;

/**
 * 课程
 * 
 * @author hadoop
 * 
 */

@Controller
@Scope("prototype")
public class CourseAction extends MyActionSupport<Coursetype> {

	private static final long serialVersionUID = 3877550984809224760L;
	private List<Coursetype> types;
	private Usercourse usercourse;
	private PageBean courses;
	private String level;
	private Integer currentPage;

	private Integer courseId; // 选中的当前课程id
	private Course course; // 要传递到courseInfo页面的course

	public Usercourse getUsercourse() {
		return usercourse;
	}

	public List<Coursetype> getTypes() {
		return types;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	/**
	 * 跳转到courseInfo.jsp界面
	 * 
	 * @return
	 */
	public String infoUI() {
		course = courseService.findById(courseId);
		if (getCurrentUser() != null) {
			try {
				usercourse = userCourseService.get("from Usercourse where course=? and user=?", course, getCurrentUser());
			} catch (Exception e) {
				// 类型1：关注
				Relationtype relationtype = relationTypeService.findById(1);
				usercourse = new Usercourse(null, course, null, relationtype, getCurrentUser(), "0小时0分钟");
				userCourseService.save(usercourse);
			}
		}
		return "infoUI";
	}

	/**
	 * 列表课程 查询所有课程、根据类型编号课程
	 * 
	 * @return
	 */
	public String list() {
		try {
			Integer typeId = model.getTypeId();
			if (typeId == 0) { // 查询所有
				courses = courseService.findAllCourse(1, 9);
			} else { // 根据父类型查找课程
				courses = courseService.findCourseByTypeId(1, 9, typeId);
			}
			coursePO2VO();// 复制PO->VO
			// 用CourseVO对象来存储Course信息
			ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
			ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
			ServletActionContext.getResponse().getWriter().print(JSONSupport.json(courses));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 最热课程
	 * 
	 * @return
	 */
	public String hot() {
		try {
			courses = courseService.getHotCourses(1, 9);
			coursePO2VO();// 复制PO->VO
			ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
			ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
			ServletActionContext.getResponse().getWriter().print(JSONSupport.json(courses));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 个性推荐
	 * 
	 * @return
	 */
	public String forme() {
		try {
			User user = getCurrentUser();
			if (user == null) {
				JSONprint("1"); // 表示还没有登录
				return null;
			}
			Integer[] ids = recommendService.recommendByUserId(user.getUserId());
			List<Course> list = courseService.findByIds(ids);
			courses = new PageBean(1, 10, list.size(), list);
			coursePO2VO();
			JSONprint(JSONSupport.json(courses));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * Android端个性推荐
	 * 
	 * @return
	 */
	public String aforme() {
		try {
			ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
			String userName = ServletActionContext.getRequest().getAttribute("userName").toString();
			userName = new String(userName.getBytes("ISO-8859-1"), "UTF-8");
			User user = userService.findByUserName(userName);
			Integer[] ids = recommendService.recommendByUserId(user.getUserId());
			List<Course> list = courseService.findByIds(ids);
			courses = new PageBean(1, 10, list.size(), list);
			coursePO2VO();
			JSONprint(JSONSupport.json(courses));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 难度筛选/下一页
	 * 
	 * @return
	 */
	public String selectLevel() {
		try {
			if (level == null || level.length() == 0 || level.equals("''")) {
				level = "";
			}
			if (model.getTypeId() == 0) { // 0表示基于全部课程检索
				courses = courseService.findAllCourse(currentPage, 9, level);
			} else if (model.getTypeId() == -1) { // -1表示基于热门课程检索
				courses = courseService.getHotCourses(currentPage, 9, level);
			} else { // 否则表示基于单独类型课程检索
				courses = courseService.findCourseByTypeId(currentPage, 9, model.getTypeId(), level);
			}
			coursePO2VO();// 复制PO->VO
			ServletActionContext.getResponse().getWriter().print(JSONSupport.json(courses));
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
