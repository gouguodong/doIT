package com.jsu.doIT.action.back.title;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Title;
import com.jsu.doIT.utils.JSONSupport;
import com.jsu.doIT.utils.converter.DateConvert;
import com.jsu.doIT.vo.TitleVO;

@Controller
@Scope("prototype")
public class TitleAction extends MyActionSupport<Title> {

	private static final long serialVersionUID = -1856976488651296183L;

	private PageBean titles;
	private Integer currentPage;
	private String titleIds;

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public void setTitleIds(String titleIds) {
		this.titleIds = titleIds;
	}

	public String UI() {
		return "UI";
	}

	/**
	 * 获取数据
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String getData() {
		try {
			if (model.getTitleName().equals("undefined")) {
				model.setTitleName("");
			}
			titles = titleService.findTitlePage(currentPage, 10, model.getTitleName());
			List<Title> list = (List<Title>) titles.getRecordList();
			List<TitleVO> titleVOs = new ArrayList<TitleVO>();
			for (Title title : list) {
				titleVOs.add(PO2VO(title));
			}
			titles.setRecordList(titleVOs);
			JSONprint(JSONSupport.json(titles));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String addType() {
		if (model.getTitleName() == null || model.getTitleName().trim().equals("")) {
			JSONprint("添加失败、称号不能为空");
		} else if (titleService.findByProperty("titleName", model.getTitleName()).size() > 0) {
			JSONprint("添加失败、称号已存在");
		} else {
			model.setAddTime(new Timestamp(new Date().getTime()));
			titleService.save(model);
			JSONprint("1");
		}
		return null;
	}

	public String delete() {
		if (model.getTitleId() > 18) { // 非等级称号
			model = titleService.findById(model.getTitleId());
			titleService.delete(model);
			JSONprint("1");
		} else { // 等级称号
			JSONprint("不能删除等级称号");
		}
		return null;
	}

	public String deleteByIds() {
		String[] strids = titleIds.split(",");
		Integer[] ids = new Integer[strids.length];
		for (int i = 0; i < strids.length; i++) {
			if (strids[i].length() > 0) {
				ids[i] = Integer.parseInt(strids[i]);
				if (ids[i] <= 18) { // 如果删除的称号中包含等级称号
					JSONprint("不能删除等级称号");
					return null;
				}
			}
		}
		List<Title> list = titleService.findByIds(ids);
		for (Title title : list) {
			titleService.delete(title);
		}
		JSONprint("1");
		return null;
	}

	public String get() {
		try {
			Title title = titleService.findById(model.getTitleId());
			TitleVO titleVO = PO2VO(title);
			JSONprint(JSONSupport.json(titleVO));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String update() {
		if (model.getTitleName() == null || model.getTitleName().trim().equals("")) {
			JSONprint("修改失败、称号名不能为空");
		} else {
			Title title = titleService.findById(model.getTitleId());
			title.setTitleDesc(model.getTitleDesc());
			title.setTitleName(model.getTitleName());
			title.setAddTime(new Timestamp(new Date().getTime()));
			titleService.update(title);
			JSONprint("1");
		}
		return null;
	}

	public TitleVO PO2VO(Title title) {
		TitleVO titleVO = new TitleVO();
		try {
			BeanUtils.copyProperties(titleVO, title);
			String titleName = title.getTitleName();
			if (titleName.contains(model.getTitleName())) {
				titleName = titleName.replace(model.getTitleName(), "<span style='color: #0099FF'>" + model.getTitleName() + "</span>");
			}
			titleVO.setTitleName(titleName);
			titleVO.setTimes(DateConvert.datetoString(title.getAddTime()).substring(0, 10));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return titleVO;
	}
}
