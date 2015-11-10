package com.jsu.doIT.action.back.filter;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Admin;
import com.jsu.doIT.po.Filter;
import com.jsu.doIT.utils.JSONSupport;
import com.jsu.doIT.utils.PublicFieldName;
import com.jsu.doIT.utils.converter.DateConvert;
import com.jsu.doIT.vo.AdminVO;
import com.jsu.doIT.vo.FilterVO;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class FilterAction extends MyActionSupport<Filter> {

	private static final long serialVersionUID = -3870374792833131869L;

	private PageBean filters;
	private Integer currentPage;
	private String filterIds;

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public void setFilterIds(String filterIds) {
		this.filterIds = filterIds;
	}

	public String UI() {
		return "UI";
	}

	@SuppressWarnings("unchecked")
	public String getData() {
		try {
			if (model.getFilterContext().equals("undefined")) {
				model.setFilterContext("");
			}
			filters = filterService.findFilterPage(currentPage, 10, model.getFilterContext());
			List<Filter> list = (List<Filter>) filters.getRecordList();
			List<FilterVO> filterVOs = new ArrayList<FilterVO>();
			for (Filter filter : list) {
				filterVOs.add(PO2VO(filter));
			}
			filters.setRecordList(filterVOs);
			JSONprint(JSONSupport.json(filters));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String addFilter() {
		if (model.getFilterContext() == null || model.getFilterContext().trim().equals("")) {
			JSONprint("添加失败、过滤字不能为空");
		} else if (filterService.findByProperty("filterContext", model.getFilterContext()).size() > 0) {
			JSONprint("添加失败、过滤字已存在");
		} else {
			Admin admin = (Admin) ActionContext.getContext().getSession().get(PublicFieldName.ADMIN);
			model.setAddTime(DateConvert.datetoString(new Date()));
			model.setAdmin(admin);
			filterService.save(model);
			JSONprint("1");
		}
		return null;
	}

	public String delete() {
		Filter filter = filterService.findById(model.getFilterId());
		filterService.delete(filter);
		JSONprint("1");
		return null;
	}

	public String deleteByIds() {
		String[] strids = filterIds.split(",");
		Integer[] ids = new Integer[strids.length];
		for (int i = 0; i < strids.length; i++) {
			if (strids[i].length() > 0) {
				ids[i] = Integer.parseInt(strids[i]);
			}
		}
		List<Filter> list = filterService.findByIds(ids);
		for (Filter filter : list) {
			filterService.delete(filter);
		}
		JSONprint("1");
		return null;
	}

	public String get() {
		try {
			Filter filter = filterService.findById(model.getFilterId());
			FilterVO filterVO = PO2VO(filter);
			JSONprint(JSONSupport.json(filterVO));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String update() {
		if (model.getFilterContext() == null || model.getFilterContext().trim().equals("")) {
			JSONprint("修改失败、过滤字不能为空");
		} else {
			Admin admin = (Admin) ActionContext.getContext().getSession().get(PublicFieldName.ADMIN);
			Filter filter = filterService.findById(model.getFilterId());
			filter.setAdmin(admin);
			filter.setFilterContext(model.getFilterContext());
			filter.setReplaceTo(model.getReplaceTo());
			filterService.update(filter);
			JSONprint("1");
		}
		return null;
	}

	public FilterVO PO2VO(Filter filter) {
		FilterVO filterVO = new FilterVO();
		try {
			BeanUtils.copyProperties(filterVO, filter);
			AdminVO adminVO = new AdminVO();
			BeanUtils.copyProperties(adminVO, filter.getAdmin());
			filterVO.setAdminVO(adminVO);
			String filterContext = filter.getFilterContext();
			if (filterContext.contains(model.getFilterContext())) {
				filterContext = filterContext.replace(model.getFilterContext(),
						"<span style='color: #0099FF'>" + model.getFilterContext() + "</span>");
			}
			filterVO.setFilterContext(filterContext);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return filterVO;
	}
}
