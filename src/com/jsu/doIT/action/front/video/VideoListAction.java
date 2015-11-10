package com.jsu.doIT.action.front.video;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Agree;
import com.jsu.doIT.po.Course;
import com.jsu.doIT.po.Coursecomment;
import com.jsu.doIT.po.Courselabel;
import com.jsu.doIT.po.Relationtype;
import com.jsu.doIT.po.Section;
import com.jsu.doIT.po.Study;
import com.jsu.doIT.po.Usercourse;
import com.jsu.doIT.po.Voide;

@Controller
@Scope("prototype")
public class VideoListAction extends MyActionSupport<PageBean> {

	private static final long serialVersionUID = 8861023398546239340L;

	private int courseId;
	private Course course;
	private Usercourse usercourse;
	private List<Usercourse> usercourseList;
	private String commentInfo;
	private int commentId;
	private Voide firstVideo;
	private boolean isConcern;
	private List<Course> courses;
	private List<Courselabel> courselabels;

	private List<Boolean> hasAgree = new ArrayList<Boolean>();

	public Usercourse getUsercourse() {
		return usercourse;
	}

	public Course getCourse() {
		return course;
	}

	public List<Course> getCourses() {
		return courses;
	}

	public List<Courselabel> getCourselabels() {
		return courselabels;
	}

	@SuppressWarnings("unchecked")
	public String index() {
		course = courseService.findById(courseId);
		Set<Section> sections = course.getSections();
		for (Section section : sections) {
			Set<Voide> voides = section.getVoides();
			for (Voide video : voides) {
				this.firstVideo = video;
				break;
			}
			break;

		}
		courses = (List<Course>) courseService.findCourseByTypeId(1, 6, 1).getRecordList();
//		User user = getCurrentUser();
//		if (user != null) {
//			try {
//				usercourse = userCourseService.get("from Usercourse where course=? and user=?", course, user);
//			} catch (Exception e) {
//				// 类型2：在学
//				Relationtype relationtype = relationTypeService.findById(2);
//				usercourse = new Usercourse(null, course, null, relationtype, user, "0小时0分钟");
//				userCourseService.save(usercourse);
//			}
//			// System.out.println(usercourse.getStudyTime());
//		}
		// System.out.println(pageVO);
		return "index";
	}

	@SuppressWarnings({ "unused", "unchecked" })
	public String comment() {
		course = courseService.findById(courseId);

		courses = (List<Course>) courseService.findCourseByTypeId(1, 6, 1).getRecordList();
		// 准备分页信息, 最终版
		PageBean pageBean = new QueryHelper(Coursecomment.class, "c").addCondition("c.course=?", course)
				.addOrderProperty("c.date", false).preparePageBean(commentService, pageNum, pageSize);
		if (getCurrentUser() != null) {
			// usercourse =
			// userCourseService.get("from Usercourse where course.courseId=? and user=?",
			// course, getCurrentUser());
			usercourse = userCourseService.findByUserIdAndCourseId(getCurrentUser().getUserId(), course.getCourseId());
			// List<Coursecomment> comments = (List<Coursecomment>)
			// pageBean.getRecordList();
			// for (Coursecomment comment : comments) {
			// System.out.println(comment.getUser());
			// try {
			// Agree agree =
			// agreeService.get("from Agree where user=? and coursecomment=?",
			// getCurrentUser(), comment);
			// hasAgree.add(true);
			// } catch (Exception e) {
			// hasAgree.add(false);
			// }
			// }
		}
		return "comment";
	}

	public void publishComment() {
		course = courseService.findById(courseId);
		Coursecomment coursecomment = new Coursecomment(course, getCurrentUser(), commentInfo, 0, new java.sql.Timestamp(
				System.currentTimeMillis()), null);
		commentService.save(coursecomment);
		try {
			PrintWriter writer = ServletActionContext.getResponse().getWriter();
			writer.print(coursecomment.getCommentId());
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void agree() {
		// System.out.println(commentId);
		Coursecomment coursecomment = commentService.findById(commentId);
		agreeService.save(new Agree(coursecomment, getCurrentUser()));
		coursecomment.setAgreeNumber(coursecomment.getAgreeNumber() + 1);
		commentService.update(coursecomment);
		try {
			ServletActionContext.getResponse().getWriter().print(200);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 关注
	 */
	public void concern() {
		course = courseService.findById(courseId);
		Relationtype relationtype;
		if (isConcern) {
			// 类型1：关注
			relationtype = relationTypeService.findById(1);
		} else {
			// 类型2：在学
			relationtype = relationTypeService.findById(2);
		}
		usercourse = userCourseService.findByUserIdAndCourseId(getCurrentUser().getUserId(), course.getCourseId());
		if (usercourse.getVoide() == null) {
			Section section = sectionService.findByCourseIdAndSectoinCode(usercourse.getCourse().getCourseId(), 1);
			usercourse.setVoide(voideService.findByCourseId(usercourse.getCourse().getCourseId(), section.getSectionId(), 1));
		}
		Study study = studyService.findByUserIdAndTime(getCurrentUser().getUserId(), new Date());
		if (study == null) {
			study = new Study();
			study.setUser(getCurrentUser());
			study.setStudyDate(new Date());
			studyService.save(study);
		}
		
		if (usercourse == null) {
			usercourse = new Usercourse(null, course, null, relationtype, getCurrentUser(), "0小时0分钟");
			userCourseService.save(usercourse);
		}
		usercourse.setStudy(study);
		usercourse.setRelationtype(relationtype);
		
		userCourseService.update(usercourse);
		studyService.update(study);
		
		try {
			ServletActionContext.getResponse().getWriter().print(200);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void setConcern(boolean isConcern) {
		this.isConcern = isConcern;
	}

	@SuppressWarnings("unchecked")
	public String question() {
		course = courseService.findById(courseId);
		courses = (List<Course>) courseService.findCourseByTypeId(1, 6, 1).getRecordList();
		usercourse = userCourseService.findByUserIdAndCourseId(getCurrentUser().getUserId(), course.getCourseId());
		return "question";
	}

	@SuppressWarnings("unchecked")
	public String label() {
		course = courseService.findById(courseId);
		courses = (List<Course>) courseService.findCourseByTypeId(1, 6, 1).getRecordList();
		usercourse = userCourseService.findByUserIdAndCourseId(getCurrentUser().getUserId(), course.getCourseId());
		courselabels = courseLabelService.findAll();
		return "label";
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public List<Usercourse> getUsercourseList() {
		return usercourseList;
	}

	public void setCommentInfo(String commentInfo) {
		this.commentInfo = commentInfo;
	}

	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}

	public List<Boolean> getHasAgree() {
		return hasAgree;
	}

	public Voide getFirstVideo() {
		return firstVideo;
	}

}
