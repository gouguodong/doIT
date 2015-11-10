package com.jsu.doIT.base;

import java.io.IOException;
import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jsu.doIT.po.User;
import com.jsu.doIT.service.admin.AdminService;
import com.jsu.doIT.service.admin.FilterService;
import com.jsu.doIT.service.admin.HeadService;
import com.jsu.doIT.service.admin.ReportService;
import com.jsu.doIT.service.admin.TitleService;
import com.jsu.doIT.service.city.CityService;
import com.jsu.doIT.service.city.CountyService;
import com.jsu.doIT.service.city.ProvinceService;
import com.jsu.doIT.service.code.CodeTypeService;
import com.jsu.doIT.service.code.UserCodeService;
import com.jsu.doIT.service.course.CourseCommentService;
import com.jsu.doIT.service.course.CourseLabelService;
import com.jsu.doIT.service.course.CourseService;
import com.jsu.doIT.service.course.CourseTypeService;
import com.jsu.doIT.service.course.SectionService;
import com.jsu.doIT.service.feedback.FeedBackService;
import com.jsu.doIT.service.feedback.ReplyFeedService;
import com.jsu.doIT.service.friend.ApplyfriendService;
import com.jsu.doIT.service.friend.UserRelationService;
import com.jsu.doIT.service.group.UserGroupService;
import com.jsu.doIT.service.message.MessageService;
import com.jsu.doIT.service.post.AgreeService;
import com.jsu.doIT.service.post.PostLabelService;
import com.jsu.doIT.service.post.PostResourceService;
import com.jsu.doIT.service.post.PostTypeService;
import com.jsu.doIT.service.post.ReplyService;
import com.jsu.doIT.service.post.ResourceTypeService;
import com.jsu.doIT.service.post.UserPostService;
import com.jsu.doIT.service.recommend.RecommendService;
import com.jsu.doIT.service.teacher.TeacherService;
import com.jsu.doIT.service.user.RelationTypeService;
import com.jsu.doIT.service.user.StudyService;
import com.jsu.doIT.service.user.UserCourseService;
import com.jsu.doIT.service.user.UserLabelService;
import com.jsu.doIT.service.user.UserOfficeService;
import com.jsu.doIT.service.user.UserService;
import com.jsu.doIT.service.user.UserinfoService;
import com.jsu.doIT.service.user.UsertypeService;
import com.jsu.doIT.service.voide.VoideResourceService;
import com.jsu.doIT.service.voide.VoideService;
import com.jsu.doIT.utils.PublicFieldName;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * Action支持
 * 
 * @author hadoop
 * 
 * @param <T>
 *            实体类型
 */
public abstract class MyActionSupport<T> extends ActionSupport implements ModelDriven<T> {

	private static final long serialVersionUID = 3195930553300618059L;

	// =============== ModelDriven的支持 ==================
	protected T model;

	@SuppressWarnings("unchecked")
	public MyActionSupport() {
		try {
			// 通过反射获取model的真实类型
			ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
			Class<T> clazz = (Class<T>) pt.getActualTypeArguments()[0];
			// 通过反射创建model的实例
			model = clazz.newInstance();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public T getModel() {
		return model;
	}

	// =============== Service实例的声明 ==================
	@Resource
	public AdminService adminService;
	@Resource
	public AgreeService agreeService;
	@Resource
	public ApplyfriendService applyfriendService;
	@Resource
	public CityService cityService;
	@Resource
	public CodeTypeService codeTypeService;
	@Resource
	public CountyService countyService;
	@Resource
	public CourseService courseService;
	@Resource
	public CourseCommentService commentService;
	@Resource
	public CourseLabelService courseLabelService;
	@Resource
	public CourseTypeService courseTypeService;
	@Resource
	public FeedBackService backService;
	@Resource
	public FilterService filterService;
	@Resource
	public HeadService headService;
	@Resource
	public MessageService messageService;
	@Resource
	public PostLabelService labelService;
	@Resource
	public PostResourceService postResourceService;
	@Resource
	public PostTypeService postTypeService;
	@Resource
	public ProvinceService provinceService;
	@Resource
	public RecommendService recommendService;
	@Resource
	public RelationTypeService relationTypeService;
	@Resource
	public ReplyService replyService;
	@Resource
	public ReplyFeedService feedService;
	@Resource
	public ResourceTypeService resourceTypeService;
	@Resource
	public SectionService sectionService;
	@Resource
	public StudyService studyService;
	@Resource
	public TeacherService teacherService;
	@Resource
	public TitleService titleService;
	@Resource
	public UserService userService;
	@Resource
	public UserCodeService codeService;
	@Resource
	public UserCourseService userCourseService;
	@Resource
	public UserGroupService userGroupService;
	@Resource
	public UserinfoService userinfoService;
	@Resource
	public UserLabelService userLabelService;
	@Resource
	public UserOfficeService officeService;
	@Resource
	public UserPostService userPostService;
	@Resource
	public UserRelationService userRelationService;
	@Resource
	public UsertypeService usertypeService;
	@Resource
	public VoideService voideService;
	@Resource
	public VoideResourceService voideResourceService;
	@Resource
	public ReportService reportService;

	/**
	 * 获取当前登录的用户
	 * 
	 * @return 当前登录的用户实体
	 */
	protected User getCurrentUser() {
		return (User) ActionContext.getContext().getSession().get(PublicFieldName.USER);
	}
	
	protected void JSONprint(Object object) {
		try {
			ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
			ServletActionContext.getResponse().getWriter().print(object);
			ServletActionContext.getResponse().getWriter().flush();
			ServletActionContext.getResponse().getWriter().close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// ============== 分页用的参数 =============

	protected int pageNum = 1; // 当前页
	protected int pageSize = 10; // 每页显示多少条记录

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	/**
	 * 获得request
	 * 
	 * @return
	 */
	protected HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}

	/**
	 * 获得response
	 * 
	 * @return
	 */
	protected HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}
}
