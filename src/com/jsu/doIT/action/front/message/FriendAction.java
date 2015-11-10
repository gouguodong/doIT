package com.jsu.doIT.action.front.message;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Userrelation;
import com.jsu.doIT.utils.JSONSupport;
import com.jsu.doIT.utils.converter.DateConvert;
import com.jsu.doIT.vo.UserVO;
import com.jsu.doIT.vo.UserinfoVO;
import com.jsu.doIT.vo.UserrelationVO;

@Controller
@Scope("prototype")
public class FriendAction extends MyActionSupport<Userrelation> {

	private static final long serialVersionUID = -5215997980286627967L;

	private Integer friendId;

	public String getData() {
		try {
			User user = getCurrentUser();
			if (null == user) {
				JSONprint("0"); // 没有登录
				return null;
			}
			List<Userrelation> list = userRelationService.findbyUserId(user.getUserId());
			List<UserrelationVO> vos = new ArrayList<UserrelationVO>();
			for (Userrelation userrelation : list) {
				vos.add(PO2VO(userrelation));
			}
			JSONprint(JSONSupport.json(vos));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String agetData() {
		try {
			ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
			String userName = ServletActionContext.getRequest().getAttribute("userName").toString();
			userName = new String(userName.getBytes("ISO-8859-1"), "UTF-8");
			User user = userService.findByUserName(userName);
			if (null == user) {
				JSONprint("0"); // 没有登录
				return null;
			}
			List<Userrelation> list = userRelationService.findbyUserId(user.getUserId());
			List<UserrelationVO> vos = new ArrayList<UserrelationVO>();
			for (Userrelation userrelation : list) {
				vos.add(PO2VO(userrelation));
			}
			JSONprint(JSONSupport.json(vos));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String delete() {
		try {
			User user = getCurrentUser();
			if (null == user) {
				JSONprint("0"); // 没有登录
				return null;
			}
			Userrelation userrelation = userRelationService.findbyUserIdAndFriendId(user.getUserId(), friendId);
			userRelationService.delete(userrelation);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public UserrelationVO PO2VO(Userrelation userrelation) {
		UserrelationVO vo = new UserrelationVO();
		try {
			BeanUtils.copyProperties(vo, userrelation);
			vo.setTimes(DateConvert.datetoString(userrelation.getRelationTime()));
			UserVO userVO = new UserVO();
			User user = userrelation.getUserByUserIdB();
			BeanUtils.copyProperties(userVO, user);
			UserinfoVO userinfoVO = new UserinfoVO();
			BeanUtils.copyProperties(userinfoVO, user.getUserinfo());
			if (userinfoVO.getSignature() == null || userinfoVO.getSignature().length() == 0) {
				userinfoVO.setSignature("这位同学很写，什么也没有懒 - - !");
			}
			userVO.setUserinfoVO(userinfoVO);
			vo.setUserB(userVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

	public void setFriendId(Integer friendId) {
		this.friendId = friendId;
	}

}
