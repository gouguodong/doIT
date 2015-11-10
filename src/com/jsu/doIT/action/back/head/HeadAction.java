package com.jsu.doIT.action.back.head;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Head;
import com.jsu.doIT.utils.JSONSupport;
import com.jsu.doIT.utils.converter.DateConvert;
import com.jsu.doIT.vo.HeadVO;

@Controller
@Scope("prototype")
public class HeadAction extends MyActionSupport<Head> {

	private static final long serialVersionUID = -8947899072030825805L;

	private PageBean headPage;
	private Integer currentPage;
	private String headIds;

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public void setHeadIds(String headIds) {
		this.headIds = headIds;
	}

	public String UI() {
		return "UI";
	}

	public String deleteByIds() {
		if (headIds.contains(",")) {
			String[] strids = headIds.split(",");
			Integer[] ids = new Integer[strids.length];
			for (int i = 0; i < strids.length; i++) {
				ids[i] = Integer.parseInt(strids[i]);
			}
			List<Head> heads = headService.findByIds(ids);
			for (Head head : heads) {
				headService.delete(head);
			}
		} else {
			model = headService.findById(Integer.parseInt(headIds));
			headService.delete(model);
		}
		JSONprint("1");
		return null;
	}

	@SuppressWarnings("unchecked")
	public String getData() {
		try {
			headPage = headService.findPage(currentPage, 8);
			List<Head> heads = (List<Head>) headPage.getRecordList();
			List<HeadVO> headVOs = new ArrayList<HeadVO>();

			for (Head head : heads) {
				headVOs.add(PO2VO(head));
			}
			headPage.setRecordList(headVOs);

			JSONprint(JSONSupport.json(headPage));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public HeadVO PO2VO(Head head) {
		HeadVO headVO = new HeadVO();
		try {
			BeanUtils.copyProperties(headVO, head);
			headVO.setTimes(DateConvert.datetoString(head.getAddTime()).substring(0, 10));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return headVO;
	}
}
