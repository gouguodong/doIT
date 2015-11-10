package com.jsu.doIT.action.front.message;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.Applyfriend;
import com.jsu.doIT.po.Message;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Userrelation;
import com.jsu.doIT.utils.JSONSupport;
import com.jsu.doIT.utils.converter.DateConvert;
import com.jsu.doIT.vo.ApplyfriendVO;
import com.jsu.doIT.vo.UserVO;
import com.jsu.doIT.vo.UserinfoVO;

@Controller
@Scope("prototype")
public class ApplyFriendAction extends MyActionSupport<Applyfriend> {

	private static final long serialVersionUID = -1506815447605123797L;

	public String getData() {
		User user = getCurrentUser();
		try {
			if (user == null) { // 如果用户没有登录
				JSONprint("0");
			} else {
				List<Applyfriend> applyfriends = applyfriendService.findByReceiveId(user.getUserId());
				List<ApplyfriendVO> vos = new ArrayList<ApplyfriendVO>();
				for (Applyfriend applyfriend : applyfriends) {
					vos.add(PO2VO(applyfriend));
				}
				JSONprint(JSONSupport.json(vos));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String add() {
		model = applyfriendService.findById(model.getApplyId());
		model.setStatus(1);
		applyfriendService.update(model); // 更改状态

		User userA = userService.findById(model.getUserByApplyUserId().getUserId());
		User userB = userService.findById(model.getUserByRecUserId().getUserId());

		Userrelation userrelation = new Userrelation(); // 添加好友关系
		userrelation.setUserByUserIdA(userA);
		userrelation.setUserByUserIdB(userB);
		userrelation.setRelationTime(new Timestamp(new Date().getTime()));
		userRelationService.save(userrelation);

		Userrelation userrelationB = new Userrelation();
		userrelationB.setUserByUserIdA(userB); // 双向添加
		userrelationB.setUserByUserIdB(userA);
		userrelationB.setRelationTime(new Timestamp(new Date().getTime()));
		userRelationService.save(userrelationB);
		
		Message message = new Message(); // 发送信息
		message.setMessageContext("我们已经是好友了, 现在开始对话吧!");
		message.setStatus(0);
		message.setUserByReceiveId(userA);
		message.setUserBySendId(userB);
		messageService.save(message); 

		return null;
	}

	public String refuse() {
		model = applyfriendService.findById(model.getApplyId());
		model.setStatus(1);
		applyfriendService.update(model);
		return null;
	}

	public String number() {
		User user = getCurrentUser();
		try {
			if (user == null) { // 如果用户没有登录
				JSONprint("0");
			} else {
				List<Applyfriend> applyfriends = applyfriendService.findByReceiveId(user.getUserId());
				JSONprint(applyfriends.size());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ApplyfriendVO PO2VO(Applyfriend applyfriend) {
		ApplyfriendVO vo = new ApplyfriendVO();
		try {
			BeanUtils.copyProperties(vo, applyfriend);
			vo.setReplayTime(DateConvert.datetoString(applyfriend.getReplayTime()));
			UserVO userVO = new UserVO();
			BeanUtils.copyProperties(userVO, applyfriend.getUserByApplyUserId());
			UserinfoVO userinfoVO = new UserinfoVO();
			BeanUtils.copyProperties(userinfoVO, applyfriend.getUserByApplyUserId().getUserinfo());
			userVO.setUserinfoVO(userinfoVO);
			vo.setUserB(userVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
}
