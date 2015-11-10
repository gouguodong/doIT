package com.jsu.doIT.action.front.question;

import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Coursetype;
import com.jsu.doIT.po.Postlabel;
import com.jsu.doIT.po.Posttype;
import com.jsu.doIT.po.Reply;
import com.jsu.doIT.po.Title;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Userinfo;
import com.jsu.doIT.po.Userpost;
import com.jsu.doIT.utils.JSONSupport;
import com.jsu.doIT.utils.Json;
import com.jsu.doIT.utils.MyBeanUtils;
import com.jsu.doIT.vo.ReplyVO;
import com.jsu.doIT.vo.UserVO;
import com.jsu.doIT.vo.UserinfoVO;
import com.jsu.doIT.vo.UserpostVO;
import com.opensymphony.xwork2.ActionContext;


@Controller
@Scope("prototype")
public class QuestionAction extends MyActionSupport<Userpost>{

	private static final long serialVersionUID = -4939299260115044174L;
	
	//问答类型
	private List<Posttype> posttypes;
	//课程类型
	private List<Coursetype> coursetypes;
	public String addUI() {		
		posttypes = postTypeService.findAll();
		ActionContext.getContext().put("posttypes", posttypes);
		//标签云
		List<Postlabel> postlabels = labelService.findAll();
		ActionContext.getContext().put("postlabels", postlabels);
		return "addUI";
	}
	
	private String matchInfo;
	private Integer matchCount;
	public void searchTitle() {
		List<Userpost> userposts = userPostService.findByTitle("%"+matchInfo+"%", matchCount);		
		List<UserpostVO> userpostVOs = new ArrayList<UserpostVO>();
		MyBeanUtils.copyList(userpostVOs, userposts, UserpostVO.class);
		Json json = new Json();
		json.setObj(userpostVOs);
		json.setSuccess(true);
		try {
			JSONprint(JSONSupport.json(json));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private Integer posttypeId;
	private Integer postlabelId;
	public void add() {		
		model.setUser(getCurrentUser());
		model.setPosttype(postTypeService.findById(posttypeId));
		model.setPostlabel(labelService.findById(postlabelId));
		model.setPostTime(new Timestamp(System.currentTimeMillis()));
		model.setReplyTime(model.getPostTime());		
		userPostService.save(model);
		Json json = new Json();
		json.setSuccess(true);
		json.setMsg(model.getPostId()+"");
		try {
			JSONprint(JSONSupport.json(json));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	private Integer questionId;
	public String addSuccess() {
		return "addSuccess";
	}
		
	private int TOPNEW = 1;
	private int TOPHOT = 2;
	private int QUESWAIT = 3;
	
	private int questionState = TOPNEW;
	private int labelId = 0;	//all	
	@SuppressWarnings("unchecked")
	public String index() {		
		//test user
		User user = getCurrentUser();		
		ActionContext.getContext().put("luser", user);
		
		ActionContext.getContext().put("questionState", questionState);
		ActionContext.getContext().put("labelId", labelId);
		
		if (user != null) {
			//新提问
			int questionNum = userPostService.getQuestionNum(user.getUserId());
			ActionContext.getContext().put("questionNum", questionNum);
			//新回复
			int replyNum = userPostService.getReplyNum(user.getUserId());
			ActionContext.getContext().put("replyNum", replyNum);
		}
		
		//标签云
		List<Postlabel> postlabels = labelService.findAll();
		ActionContext.getContext().put("postlabels", postlabels);
		//热门问题
		List<Userpost> userposts = userPostService.topPosts(5);
		ActionContext.getContext().put("topposts", userposts);
		//雷锋榜
		List<User> users = (List<User>) userService.topByReplys(1, 6).getRecordList();
		ActionContext.getContext().put("users", users);
		//等级称号
		List<Title> titles = titleService.findAll();
		ActionContext.getContext().put("titles", titles);
		
		//分页
		Map<String, Object> filterMap = new HashMap<String, Object>();
		if ( labelId != 0 ) {
			filterMap.put("labelId=?", labelId);
		}
		Map<String, Boolean> orderMap = new HashMap<String, Boolean>();
		if ( questionState == TOPNEW ) {
			orderMap.put("postTime", false);
		}else if ( questionState == TOPHOT ) {
			orderMap.put("clickNumber", false);
		}else if ( questionState == QUESWAIT ) {
			orderMap.put("postTime", false);
			filterMap.put("replyNumber is NULL", null);
		}
		PageBean page = userPostService.findPage(pageNum, pageSize, filterMap, orderMap);
		ActionContext.getContext().getValueStack().push(page);
		
		//replyVO
		List<ReplyVO> replyVOs = new ArrayList<ReplyVO>();
		List<Userpost> questions = (List<Userpost>) page.getRecordList();
		for (int i = 0; i < questions.size(); i ++) {
			Userpost question = questions.get(i);
			if ( question.getReplyNumber() == null || question.getReplyNumber() == 0 ) {
				replyVOs.add(null);
			}else {
				List<Reply> replies = new ArrayList<Reply>(question.getReplies());
				int m = -1;
				ReplyVO replyVO = new ReplyVO();
				for (int j = 0; j < replies.size(); j ++) {
					Reply reply = replies.get(j);
					if ( reply.getStatus() == 2 ) { //采纳
						m = j;
						break;
					}
				}
				if ( m == -1 ) {
					m = replies.size()-1;
				}				
				Reply reply = replies.get(m);
				UserVO userVO = new UserVO();
				MyBeanUtils.copy(userVO, reply.getUser());
				MyBeanUtils.copy(replyVO, reply);
				replyVO.setUserHead(reply.getUser().getUserHead());
				replyVO.setUserName(reply.getUser().getUserName());
				replyVO.setUserVO(userVO);
				replyVOs.add(replyVO);				
			}
		}
		ActionContext.getContext().put("replyVOs", replyVOs);
		return "index";
	}
	
	@SuppressWarnings("unchecked")
	public String show() {
		//test user
		User user = getCurrentUser();		
		ActionContext.getContext().put("luser", user); 
		//该问题
		Userpost userpost = userPostService.findById(questionId);		
		Integer cnum = userpost.getClickNumber();
		if ( cnum == null ) cnum = 0;
		userpost.setClickNumber(cnum+1);			
		userPostService.update(userpost);
		ActionContext.getContext().getValueStack().push(userpost);
		
		//标签云
		List<Postlabel> postlabels = labelService.findAll();
		ActionContext.getContext().put("postlabels", postlabels);
		//相关问题		
		List<Userpost> userposts = userPostService.findByType(userpost.getPostlabel(), 5);
		userposts.remove(userpost);
		ActionContext.getContext().put("userposts", userposts);
		//雷锋榜
		List<User> users = (List<User>) userService.topByReplys(1, 6).getRecordList();
		ActionContext.getContext().put("users", users);
		//等级称号
		List<Title> titles = titleService.findAll();
		ActionContext.getContext().put("titles", titles);
		
		//采纳
		Reply adoptReply = null;
		Set<Reply> replies = (Set<Reply>) userpost.getReplies();
		for (Reply r :  replies) {
			if ( r.getStatus() == 2 ) {
				adoptReply = r;
				continue ;
			}
			if ( r.getStatus() == 0 ) {
				r.setStatus(1);
				replyService.update(r);
			}
		}		
		//新提问
		int questionNum = userPostService.getQuestionNum(user.getUserId());
		ActionContext.getContext().put("questionNum", questionNum);
		//新回复
		int replyNum = userPostService.getReplyNum(user.getUserId());
		ActionContext.getContext().put("replyNum", replyNum);
		
		ActionContext.getContext().put("adoptReply", adoptReply);
		return "show";
	}
	private String replyContext;
	private Integer replyFatherId;
	//回复
	public void answer() {
		Reply reply = new Reply();
		//test user
		User user = getCurrentUser();
		reply.setUser(user);		
		if ( questionId != null ) {
			Userpost question = userPostService.findById(questionId);	//用户
			question.setReplyNumber(question.getReplyNumber() == null ? 1 : question.getReplyNumber()+1);
			reply.setUserpost(question);
		}
		if ( replyContext.matches("回复  .+: ?(.*)") ) {
			replyContext = replyContext.replaceAll("回复  .+: ?(.*)", "$1");
		}
		reply.setReplyContext(replyContext);
		reply.setReplyNumber(0);
		//用户回帖数加1
		Userinfo userinfo = reply.getUser().getUserinfo();
		userinfo.setReplyNumber(userinfo.getReplyNumber() == null ? 1 : userinfo.getReplyNumber()+1);
		if ( replyFatherId != null ) {
			reply.setReply(replyService.findById(replyFatherId));
		}
		reply.setReplyTime(new Timestamp(System.currentTimeMillis()));
		reply.setStatus(0);	//有新回复 
		replyService.save(reply);
		ReplyVO replyVO = new ReplyVO();
		MyBeanUtils.copy(replyVO, reply);
		if ( reply.getReply() != null ) {
			replyVO.setUserName(reply.getReply().getUser().getUserName());
		}
		UserVO userVO = new UserVO();
		MyBeanUtils.copy(userVO, reply.getUser());
		replyVO.setUserVO(userVO);
		Json json = new Json();
		json.setSuccess(true);
		json.setObj(replyVO);
		try {
			JSONprint(JSONSupport.json(json));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	private Integer replyId;
	public String adopt() {
		Reply reply = replyService.findById(replyId);
		reply.setStatus(2);
		replyService.save(reply);
		return "adopt";
	}
	@SuppressWarnings("unchecked")
	public String more() {
		//test user
		User user = getCurrentUser();		
		ActionContext.getContext().put("user", user);
		//新提问
		int questionNum = userPostService.getQuestionNum(user.getUserId());
		ActionContext.getContext().put("questionNum", questionNum);
		//新回复
		int replyNum = userPostService.getReplyNum(user.getUserId());
		ActionContext.getContext().put("replyNum", replyNum);
		//标签云
		List<Postlabel> postlabels = labelService.findAll();
		ActionContext.getContext().put("postlabels", postlabels);
		
		//主要用户
		List<User> users = (List<User>) userService.topByReplys(1, 10).getRecordList();
		List<UserVO> userVOs = new ArrayList<UserVO>();
		MyBeanUtils.copyList(userVOs, users, UserVO.class);
		for (int i = 0; i < users.size(); i ++) {
			UserinfoVO userinfoVO = new UserinfoVO();
			User u = users.get(i);
			MyBeanUtils.copy(userinfoVO, u.getUserinfo());
			UserVO userVO = userVOs.get(i);			
			userVO.setUserinfoVO(userinfoVO);
			int adoptNum = replyService.getAdoptNum(u);
			DecimalFormat df = new DecimalFormat("#.#");
			userVO.setAdoptPercent(df.format(1d*adoptNum/(u.getReplies().size() == 0 ? 1:u.getReplies().size())*100));
//			System.out.println(userVO.getAdoptPercent());
		}
		ActionContext.getContext().put("users", userVOs);		
		//等级称号
		List<Title> titles = titleService.findAll();
		ActionContext.getContext().put("titles", titles);
		return "more";
	}
	
	
	public List<Posttype> getPosttypes() {
		return posttypes;
	}

	public void setPosttypes(List<Posttype> posttypes) {
		this.posttypes = posttypes;
	}

	public List<Coursetype> getCoursetypes() {
		return coursetypes;
	}

	public void setCoursetypes(List<Coursetype> coursetypes) {
		this.coursetypes = coursetypes;
	}

	public Integer getPostlabelId() {
		return postlabelId;
	}


	public void setPostlabelId(Integer postlabelId) {
		this.postlabelId = postlabelId;
	}


	public Integer getPosttypeId() {
		return posttypeId;
	}


	public void setPosttypeId(Integer posttypeId) {
		this.posttypeId = posttypeId;
	}

	public String getMatchInfo() {
		return matchInfo;
	}

	public void setMatchInfo(String matchInfo) {
		this.matchInfo = matchInfo;
	}

	public Integer getMatchCount() {
		return matchCount;
	}

	public void setMatchCount(Integer matchCount) {
		this.matchCount = matchCount;
	}


	public int getQuestionState() {
		return questionState;
	}


	public void setQuestionState(int questionState) {
		this.questionState = questionState;
	}


	public Integer getQuestionId() {
		return questionId;
	}


	public void setQuestionId(Integer questionId) {
		this.questionId = questionId;
	}

	public int getLabelId() {
		return labelId;
	}

	public void setLabelId(int labelId) {
		this.labelId = labelId;
	}

	public String getReplyContext() {
		return replyContext;
	}

	public void setReplyContext(String replyContext) {
		this.replyContext = replyContext;
	}

	public Integer getReplyFatherId() {
		return replyFatherId;
	}

	public void setReplyFatherId(Integer replyFatherId) {
		this.replyFatherId = replyFatherId;
	}

	public Integer getReplyId() {
		return replyId;
	}

	public void setReplyId(Integer replyId) {
		this.replyId = replyId;
	}
	
}
