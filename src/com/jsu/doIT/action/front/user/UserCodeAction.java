package com.jsu.doIT.action.front.user;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Usercode;
import com.jsu.doIT.po.Userinfo;
import com.jsu.doIT.utils.converter.DateConvert;
import com.jsu.doIT.vo.UsercodeVO;
import com.jsu.doIT.vo.UserinfoRightVO;

/**
 * 用户代码信息
 * 
 * @author Administrator
 * 
 */
@Controller
@Scope("prototype")
public class UserCodeAction extends MyActionSupport<Usercode> {

	private static final long serialVersionUID = 5167462127411784295L;

	private PageBean codes;
	private UserinfoRightVO rightVO;
	private Userinfo userinfo;

	public UserinfoRightVO getRightVO() {
		return rightVO;
	}

	public void setRightVO(UserinfoRightVO rightVO) {
		this.rightVO = rightVO;
	}

	public Userinfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public String userCode() {
		User user = getCurrentUser();
		userinfo = userinfoService.findById(user.getUserId());
		rightVO = userinfoPO2VO();
		if (pageNum == 1) {
			codes = codeService.findCodeByUserId(user.getUserId(), pageNum, pageSize);
		} else {
			codes = codeService.findCodeByUserId(user.getUserId(), pageNum, pageSize);
		}
		userCodePO2VO();
		return "usercode";
	}

	@SuppressWarnings("unchecked")
	public void userCodePO2VO() {
		List<Usercode> clist = (List<Usercode>) codes.getRecordList();
		List<UsercodeVO> cvlist = new ArrayList<UsercodeVO>();
		for (Usercode uc : clist) {
			UsercodeVO usercodeVO = new UsercodeVO();
			try {
				BeanUtils.copyProperties(usercodeVO, uc);
			} catch (Exception e) {
				e.printStackTrace();
			}
			usercodeVO.setCodeType(uc.getCodetype().getTypeName());
			usercodeVO.setSaveTime(DateConvert.datetoString(uc.getSaveTime()).substring(0, 10));
			cvlist.add(usercodeVO);
		}
		codes.setRecordList(cvlist);
	}

	public PageBean getCodes() {
		return codes;
	}

	public void setCodes(PageBean codes) {
		this.codes = codes;
	}

	public UserinfoRightVO userinfoPO2VO() {
		UserinfoRightVO info = new UserinfoRightVO();
		info.copy(info, userinfo);
		return info;
	}
}
