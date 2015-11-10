package com.jsu.doIT.action.front.user;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Course;
import com.jsu.doIT.po.Study;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Usercourse;
import com.jsu.doIT.po.Userinfo;
import com.jsu.doIT.utils.JSONSupport;
import com.jsu.doIT.utils.Json;
import com.jsu.doIT.utils.PublicFieldName;
import com.jsu.doIT.utils.PublicMethod;
import com.jsu.doIT.utils.converter.DateConvert;
import com.jsu.doIT.vo.CourseVO;
import com.jsu.doIT.vo.StudyVO;
import com.jsu.doIT.vo.UsercourseVO;
import com.jsu.doIT.vo.UserinfoRightVO;
import com.opensymphony.xwork2.ActionContext;

/**
 * 用户课程信息
 * 
 * @author Administrator
 * 
 */
@Controller
@Scope("prototype")
public class UserCourseAction extends MyActionSupport<Usercourse> {

	private static final long serialVersionUID = 5070505540135224658L;

	private PageBean courses;
	private PageBean studys;
	private Integer currentPage;
	private UserinfoRightVO rightVO;
	private Userinfo userinfo;
	private Integer deltype;

	public Integer getDeltype() {
		return deltype;
	}

	public void setDeltype(Integer deltype) {
		this.deltype = deltype;
	}

	public PageBean getStudys() {
		return studys;
	}

	public void setStudys(PageBean studys) {
		this.studys = studys;
	}

	public UserinfoRightVO getRightVO() {
		return rightVO;
	}

	public void setRightVO(UserinfoRightVO rightVO) {
		this.rightVO = rightVO;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public PageBean getCourses() {
		return courses;
	}

	public void setCourses(PageBean courses) {
		this.courses = courses;
	}

	/**
	 * 根据关系类型编号，用户编号查找用户关注课程
	 * 
	 * @return
	 */
	public String attention() {
		// 测试用户
		User user1 = userService.findById(2);
		ActionContext.getContext().getSession().put(PublicFieldName.USER, user1);
		User user = getCurrentUser();
		userinfo = userinfoService.findById(user.getUserId());
		rightVO = userinfoPO2VO();
		if (currentPage == null) {
			courses = userCourseService.findAttentionCourse(1, 5, 1, user.getUserId());
		} else {
			courses = userCourseService.findAttentionCourse(currentPage, 5, 1, user.getUserId());
		}
		// 用CourseVO对象来存储Course信息
		coursePO2VO();
		return "usercourse";
	}

	public void delAttention() {
		// System.out.println("relationId:::"+model.getRelationId());
		userCourseService.delete(model);
		Json json = new Json();
		json.setSuccess(true);
		json.setMsg("usercourse/attention.action");
		try {
			JSONprint(JSONSupport.json(json));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public String learning() {
		User user = getCurrentUser();
		userinfo = userinfoService.findById(user.getUserId());
		rightVO = userinfoPO2VO();
		if (currentPage == null) {
			studys = studyService.findStudyByUserId(user.getUserId(), 2, 1, 10);
		} else {
			studys = studyService.findStudyByUserId(user.getUserId(), 2, currentPage, 10);
		}
		studyPO2VO();
		return "userlearning";
	}

	public void dellearn() {
		userCourseService.delete(model);
		Json json = new Json();
		json.setSuccess(true);
		if (deltype == 1) {// 在学课程
			json.setMsg("usercourse/learning.action");
		} else if (deltype == 2) {// 学完课程
			json.setMsg("usercourse/learned.action");
		}
		try {
			JSONprint(JSONSupport.json(json));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String learned() {
		User user = getCurrentUser();
		userinfo = userinfoService.findById(user.getUserId());
		rightVO = userinfoPO2VO();
		if (currentPage == null) {
			studys = studyService.findStudyByUserId(user.getUserId(), 3, 1, 10);
		} else {
			studys = studyService.findStudyByUserId(user.getUserId(), 3, currentPage, 10);
		}
		studyPO2VO();

		return "userlearned";
	}

	@SuppressWarnings("unchecked")
	public void studyPO2VO() {
		List<Study> slist = (List<Study>) studys.getRecordList();
		List<StudyVO> svlist = new ArrayList<StudyVO>();
		for (Study s : slist) {
			StudyVO studyVO = new StudyVO();
			try {
				BeanUtils.copyProperties(studyVO, s);
			} catch (Exception e) {
				e.printStackTrace();
			}
			studyVO.setStudyDate(DateConvert.datetoString(s.getStudyDate()).substring(0, 10));
			List<Usercourse> uclist = new ArrayList<Usercourse>(s.getUsercourses());
			List<UsercourseVO> ucvlist = new ArrayList<UsercourseVO>();
			for (Usercourse uc : uclist) {
				UsercourseVO usercourseVO = new UsercourseVO();
				try {
					BeanUtils.copyProperties(usercourseVO, uc);
				} catch (Exception e) {
					e.printStackTrace();
				}
				Course course = uc.getCourse();
				String imgURL = course.getCourseIndex();
				course.setCourseIndex(PublicMethod.changeImgURL(imgURL));// 修改图片地址使可显示
				CourseVO courseVO = new CourseVO();
				courseVO.copy(courseVO, course);
				courseVO.setUpdateTime(DateConvert.datetoString(course.getUpdateTime()).substring(0, 10));
				if (course.getCourseInfo().length() >= 10) {
					courseVO.setCourseInfo(course.getCourseInfo().substring(0, 10));
				}
				usercourseVO.setCourseVO(courseVO);
				String coursetime = uc.getCourse().getCourseTime();
				String studytime = uc.getStudyTime();
				double alltime = 0;
				if (coursetime.length() == 6) {
					alltime = coursetime.charAt(0) * 60 + coursetime.charAt(3);
				} else if (coursetime.length() == 7) {
					alltime = coursetime.charAt(0) * 60 + coursetime.charAt(3) * 10 + coursetime.charAt(4);
				}
				double stime = 0;
				if (studytime.length() == 6) {
					stime = studytime.charAt(0) * 60 + studytime.charAt(3);
				} else if (studytime.length() == 7) {
					stime = studytime.charAt(0) * 60 + studytime.charAt(3) * 10 + studytime.charAt(4);
				}
				if (alltime != 0) {
					Integer temp = (int) (stime / alltime * 100);
					usercourseVO.setLearnpercent(temp.toString());
				}
				ucvlist.add(usercourseVO);
			}
			studyVO.setUsercourseVOs(new HashSet<UsercourseVO>(ucvlist));
			svlist.add(studyVO);
		}
		studys.setRecordList(svlist);
	}

	/**
	 * 复制PO->VO
	 */

	@SuppressWarnings("unchecked")
	public void coursePO2VO() {
		List<Usercourse> uclist = (List<Usercourse>) courses.getRecordList();
		List<UsercourseVO> uvlist = new ArrayList<UsercourseVO>();
		for (Usercourse u : uclist) {
			UsercourseVO usercourseVO = new UsercourseVO();
			try {
				BeanUtils.copyProperties(usercourseVO, u);
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			try {
				usercourseVO.setVoideId(u.getVoide().getVoideId());
			} catch (Exception e) {
			}
			CourseVO courseVO = new CourseVO();
			courseVO.copy(courseVO, u.getCourse());
			courseVO.setCourseIndex(PublicMethod.changeImgURL(courseVO.getCourseIndex()));

			usercourseVO.setCourseVO(courseVO);
			uvlist.add(usercourseVO);
		}
		courses.setRecordList(uvlist);
	}

	public UserinfoRightVO userinfoPO2VO() {
		UserinfoRightVO info = new UserinfoRightVO();
		info.copy(info, userinfo);
		return info;
	}
}
