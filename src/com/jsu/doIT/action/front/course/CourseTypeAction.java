package com.jsu.doIT.action.front.course;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.Coursetype;
import com.jsu.doIT.utils.JSONSupport;
import com.jsu.doIT.vo.CoursetypeVO2And;

@Controller
@Scope("prototype")
public class CourseTypeAction extends MyActionSupport<Coursetype> {

	private static final long serialVersionUID = 5006716425646329516L;
	
	public String test() {
		return SUCCESS;
	}
	
	public String list() {
		try {
			List<Coursetype> coursetypes = courseTypeService.findAll();
			List<CoursetypeVO2And> vos = new ArrayList<CoursetypeVO2And>();
			for (Coursetype coursetype : coursetypes) {
				CoursetypeVO2And vo = new CoursetypeVO2And();
				BeanUtils.copyProperties(vo, coursetype);
				Coursetype father = coursetype.getCoursetype();
				if (father != null) {
					vo.setFatherId(father.getTypeId());
				}
				vos.add(vo);
			}
			ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
			ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
			JSONprint(JSONSupport.json(vos));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
