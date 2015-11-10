package com.jsu.doIT.action.back.course;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Coursetype;
import com.jsu.doIT.utils.JSONSupport;
import com.jsu.doIT.vo.CoursetypeVO;

@Controller
@Scope("prototype")
public class CourseTypeManageAction extends MyActionSupport<Coursetype> {

	private static final long serialVersionUID = -6685234237071535600L;

	private List<Coursetype> fatherType;
	private Integer currentPage;
	private PageBean coursetypes;
	private Integer fatherId;

	public List<Coursetype> getFatherType() {
		return fatherType;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public void setFatherId(Integer fatherId) {
		this.fatherId = fatherId;
	}

	public String UI() {
		fatherType = courseTypeService.findFatherType();
		return "UI";
	}

	@SuppressWarnings("unchecked")
	public String getData() {
		try {
			coursetypes = courseTypeService.findChildTypePage(currentPage, 10, model.getTypeId());
			List<Coursetype> list = (List<Coursetype>) coursetypes.getRecordList();
			List<CoursetypeVO> coursetypeVOs = new ArrayList<CoursetypeVO>();
			for (Coursetype coursetype : list) {
				coursetypeVOs.add(PO2VO(coursetype));
			}
			coursetypes.setRecordList(coursetypeVOs);
			JSONprint(JSONSupport.json(coursetypes));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String addRoot() {
		if (model.getTypeName() == null || model.getTypeName().equals("")) {
			JSONprint("类型名不能为空");
			return null;
		}
		Coursetype coursetype = courseTypeService.findByTypeName(model.getTypeName());
		if (coursetype != null) {
			JSONprint("添加失败、类型名已存在");
			return null;
		}
		courseTypeService.save(model);
		JSONprint("1"); // 添加成功
		return null;
	}

	public String addChild() {
		if (model.getTypeName() == null || model.getTypeName().equals("")) {
			JSONprint("类型名不能为空");
			return null;
		}
		System.out.println(model.getTypeName());
		Coursetype coursetype = courseTypeService.findByTypeName(model.getTypeName());
		if (coursetype != null) {
			JSONprint("添加失败、类型名已存在");
			return null;
		}
		model.setCoursetype(courseTypeService.findById(model.getTypeId()));
		courseTypeService.save(model);
		JSONprint("1"); // 添加成功
		return null;
	}

	/**
	 * 删除类型
	 * 
	 * @return
	 */
	public String delete() {
		model = courseTypeService.findById(model.getTypeId());
		if (model == null) {
			JSONprint("删除失败、类型不存在");
			return null;
		}
		courseTypeService.delete(model);
		JSONprint("1"); // 删除成功
		return null;
	}

	public String get() {
		try {
			model = courseTypeService.findById(model.getTypeId());
			CoursetypeVO coursetypeVO = PO2VO(model);
			JSONprint(JSONSupport.json(coursetypeVO));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String update() {
		Coursetype coursetype = courseTypeService.findById(model.getTypeId());
		coursetype.setTypeName(model.getTypeName());
		if (fatherId != 0) { // 表示要修改的是子类型
			coursetype.setCoursetype(courseTypeService.findById(fatherId));
		}
		courseTypeService.update(coursetype);
		JSONprint("1");
		return null;
	}

	public CoursetypeVO PO2VO(Coursetype coursetype) throws Exception {
		CoursetypeVO coursetypeVO = new CoursetypeVO();
		BeanUtils.copyProperties(coursetypeVO, coursetype);
		CoursetypeVO father = new CoursetypeVO();
		if (coursetype.getCoursetype() != null) {
			BeanUtils.copyProperties(father, coursetype.getCoursetype());
		} else {
			father.setTypeName("无");
		}
		coursetypeVO.setCoursetypeVO(father);
		return coursetypeVO;
	}
}
