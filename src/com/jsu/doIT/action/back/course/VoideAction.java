package com.jsu.doIT.action.back.course;

import java.io.File;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.Course;
import com.jsu.doIT.po.Section;
import com.jsu.doIT.po.Teacher;
import com.jsu.doIT.po.Voide;
import com.jsu.doIT.po.Voideresource;
import com.jsu.doIT.utils.JSONSupport;
import com.jsu.doIT.utils.PublicMethod;
import com.jsu.doIT.vo.CourseVO;
import com.jsu.doIT.vo.SectionVO;

@Controller
@Scope("prototype")
public class VoideAction extends MyActionSupport<Voide> {

	private static final long serialVersionUID = 2535247793491661196L;
	private List<Teacher> teachers;
	private Integer teacherId;
	private Integer courseId;
	private Integer sectionId;
	private String sectionDesc;
	private String result;

	// 视频文件
	private File myFile; // 上传的文件
	private String myFileFileName; // 文件名称
	private String myFileContentType; // 文件类型
	// 资源文件
	private File resource;
	private String resourceFileName;
	private String resourceContentType;

	public List<Teacher> getTeachers() {
		return teachers;
	}

	public void setTeacherId(Integer teacherId) {
		this.teacherId = teacherId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public void setSectionId(Integer sectionId) {
		this.sectionId = sectionId;
	}

	public void setSectionDesc(String sectionDesc) {
		this.sectionDesc = sectionDesc;
	}

	public String getResult() {
		return result;
	}

	public void setResource(File resource) {
		this.resource = resource;
	}

	public void setResourceFileName(String resourceFileName) {
		this.resourceFileName = resourceFileName;
	}

	public void setResourceContentType(String resourceContentType) {
		this.resourceContentType = resourceContentType;
	}

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}

	public void setMyFileFileName(String myFileFileName) {
		this.myFileFileName = myFileFileName;
	}

	public void setMyFileContentType(String myFileContentType) {
		this.myFileContentType = myFileContentType;
	}

	/**
	 * 进入视频页面
	 * 
	 * @return
	 */
	public String voide() {
		teachers = teacherService.findAll();
		return "video";
	}

	/**
	 * 添加视频
	 * 
	 * @return
	 */
	public String addVoide() {
		Teacher teacher = teacherService.findById(teacherId);
		Course course = courseService.findById(courseId);

		// 设置视频所属课程章节
		Section section = sectionService.findById(sectionId);
		section.setSectionDesc(sectionDesc);

		model.setSection(section);
		// 设置视频地址
		String savePath = teacher.getTeacherId() + "/" + course.getCourseId() + "/" + section.getSectionId();
		String voideURL = PublicMethod.upload(savePath, myFile, myFileFileName, myFileContentType);
		model.setVoideUrl(voideURL);
		model.setVoideName(myFileFileName);

		// 设置视频资源
		if (resource != null) {
			String resourcePath = PublicMethod.upload(savePath, resource, resourceFileName, resourceContentType);
			Voideresource voideresource = new Voideresource(resourcePath);
			// 将视频资源路径存入数据库
			voideResourceService.save(voideresource);
			model.setVoideresource(voideresource);
		}

		result = "上传成功!";
		sectionService.update(section);
		// 将视频路径保存在数据库
		voideService.save(model);
		teachers = teacherService.findAll();

		// 更新该课程的课程更新时间
		course.setUpdateTime(new Timestamp(new Date().getTime()));
		courseService.update(course);

		return "video";
	}

	/**
	 * 根据教师编号查找所有该教师的课程
	 * 
	 * @return
	 */
	public String selectCourse() {
		try {
			List<Course> courses = courseService.findCourseByTeacherId(teacherId);
			List<CourseVO> courseVOs = new ArrayList<CourseVO>();
			for (Course course : courses) {
				CourseVO courseVO = new CourseVO();
				BeanUtils.copyProperties(courseVO, course);
				courseVOs.add(courseVO);
			}
			ServletActionContext.getResponse().getWriter().print(JSONSupport.json(courseVOs));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 根据课程编号查找该课程的所有章节
	 * 
	 * @return
	 */
	public String selectSection() {
		try {
			List<Section> sections = sectionService.findByCourseId(courseId);
			List<SectionVO> sectionVOs = new ArrayList<SectionVO>();
			for (Section section : sections) {
				SectionVO sectionVO = new SectionVO();
				BeanUtils.copyProperties(sectionVO, section);
				sectionVOs.add(sectionVO);
			}
			ServletActionContext.getResponse().getWriter().print(JSONSupport.json(sectionVOs));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
