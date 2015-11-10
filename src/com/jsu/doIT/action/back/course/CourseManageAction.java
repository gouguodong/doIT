package com.jsu.doIT.action.back.course;

import java.io.File;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.Course;
import com.jsu.doIT.po.Coursetype;
import com.jsu.doIT.po.Section;
import com.jsu.doIT.po.Teacher;
import com.jsu.doIT.utils.PublicMethod;

@Controller
@Scope("prototype")
public class CourseManageAction extends MyActionSupport<Course> {

	private static final long serialVersionUID = -210355876457167790L;
	private List<Teacher> teachers;
	private List<Coursetype> coursetypes;
	private String page;
	private Integer teacherId;
	private Integer typeId;
	
	private File myFile; // 上传的文件
	private String myFileFileName; // 文件名称
	private String myFileContentType; // 文件类型

	public void setPage(String page) {
		this.page = page;
	}

	public void setTeacherId(Integer teacherId) {
		this.teacherId = teacherId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
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

	public List<Teacher> getTeachers() {
		return teachers;
	}

	public List<Coursetype> getCoursetypes() {
		return coursetypes;
	}

	/**
	 * 课程管理首页
	 * 
	 * @return
	 */
	public String index() {
		teachers = teacherService.findAll();
		coursetypes = courseTypeService.findAllChildType();
		return SUCCESS;
	}

	/**
	 * 添加课程
	 * 
	 * @return
	 */
	public String addCourse() {
		String[] pages = page.split(", ");
		Teacher teacher = teacherService.findById(teacherId);
		String savePath = teacher.getTeacherId() + "/" + model.getCourseId();
		String imgURL = PublicMethod.upload(savePath, myFile, myFileFileName, myFileContentType);
		model.setTeacher(teacher);
		model.setCoursetype(courseTypeService.findById(typeId));
		model.setCourseIndex(imgURL);// 设置课程封面
		model.setUpdateTime(new Timestamp(new Date().getTime()));
		model.setStudyNumber(0);

		courseService.save(model);

		for (String sectionName : pages) {
			Section section = new Section(sectionName);
			section.setCourse(model);
			sectionService.save(section);
		}

		return "OK";
	}

}
