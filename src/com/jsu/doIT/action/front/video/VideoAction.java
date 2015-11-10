package com.jsu.doIT.action.front.video;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Agree;
import com.jsu.doIT.po.Course;
import com.jsu.doIT.po.Coursecomment;
import com.jsu.doIT.po.Relationtype;
import com.jsu.doIT.po.Study;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Usercourse;
import com.jsu.doIT.po.Userinfo;
import com.jsu.doIT.po.Voide;
import com.jsu.doIT.vo.PageVO;

@Controller
@Scope("prototype")
public class VideoAction extends MyActionSupport<PageVO> {

	private static final long serialVersionUID = 8198178025823774789L;

	private int voideId;
	private Voide video;
	private Course course;
	private Usercourse usercourse;
	private Integer courseId;
	private List<Course> courses;

	private List<Boolean> hasAgree = new ArrayList<Boolean>();

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public Voide getVideo() {
		return video;
	}

	public Usercourse getUsercourse() {
		return usercourse;
	}

	public Course getCourse() {
		return course;
	}

	public List<Course> getCourses() {
		return courses;
	}

	@SuppressWarnings({ "unchecked", "unused" })
	public String index() {
		course = courseService.findById(courseId);
		Integer videoId = voideId;
		if (videoId == null) {
			videoId = 1;
		}
		video = voideService.findById(videoId);
		User user = getCurrentUser();

		Userinfo userinfo = user.getUserinfo();
		userinfo.setVoide(video);
		userinfoService.update(userinfo);

		courses = (List<Course>) courseService.findCourseByTypeId(1, 6, 1).getRecordList();
		Study study = studyService.findByUserIdAndTime(user.getUserId(), new Date());
		if (study == null) {
			study = new Study();
			study.setUser(getCurrentUser());
			study.setStudyDate(new Date());
			studyService.save(study);
		}

		if (user != null) {
			try {
				usercourse = userCourseService.get("from Usercourse where course=? and user=?", course, user);
				usercourse.setVoide(video);
				usercourse.setStudy(study);
				Integer time = usercourse.getMinute() + video.getVoideTime();
				usercourse.setStudyTime(time / 60 + "小时" + (time % 60) + "分钟");
				userCourseService.update(usercourse);
			} catch (Exception e) {
				// 类型2：在学
				Relationtype relationtype = relationTypeService.findById(2);
				usercourse = new Usercourse(video, course, null, relationtype, user, "0小时0分钟");
				usercourse.setStudy(study);
				Integer time = usercourse.getMinute() + video.getVoideTime();
				usercourse.setStudyTime(time / 60 + "小时" + (time % 60) + "分钟");
				userCourseService.save(usercourse);
			}

			Integer time = video.getVoideTime();
			if (study.getStudyTime() != null) {
				time += study.getStudyTime();
			}
			study.setStudyTime(time);
			studyService.update(study);
			// System.out.println(usercourse.getStudyTime());
		}

		// 准备分页信息, 最终版
		PageBean pageBean = new QueryHelper(Coursecomment.class, "c").addCondition("c.course=?", course)
				.addOrderProperty("c.date", false).preparePageBean(commentService, pageNum, pageSize);
		if (getCurrentUser() != null) {
			List<Coursecomment> comments = (List<Coursecomment>) pageBean.getRecordList();
			for (Coursecomment comment : comments) {
				// System.out.println(comment.getUser());
				try {
					Agree agree = agreeService.get("from Agree where user=? and coursecomment=?", getCurrentUser(), comment);
					hasAgree.add(true);
				} catch (Exception e) {
					hasAgree.add(false);
				}
			}
		}

		return "index";
	}

	public void setVoideId(int voideId) {
		this.voideId = voideId;
	}

	public List<Boolean> getHasAgree() {
		return hasAgree;
	}
}
