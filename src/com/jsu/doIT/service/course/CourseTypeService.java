package com.jsu.doIT.service.course;

import java.util.List;
import java.util.Set;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Coursetype;

public interface CourseTypeService extends DaoSupport<Coursetype> {

	/**
	 * 查找所有父类型
	 * 
	 * @return 父类型集合
	 */
	public List<Coursetype> findFatherType();

	/**
	 * 根据父类型编号、查找他所有的子类型
	 * 
	 * @param typeId
	 *            类型标识
	 * @return 子类型集合
	 */
	public Set<Coursetype> findChlidByFatherId(Integer typeId);

	/**
	 * 查找所有的二级类型
	 * 
	 * @return 类型集合
	 */
	public List<Coursetype> findAllChildType();

	/**
	 * 查找所有课程类型/根据父类型编号查找他所有的类型
	 * 
	 * @param currentPage
	 *            页码
	 * @param pageSize
	 *            页面大小
	 * @param coursetypeId
	 *            父类型编号
	 * @return 类型分页对象
	 */
	public PageBean findChildTypePage(Integer currentPage, Integer pageSize,
			Integer... coursetypeId);

	/**
	 * 根据课程名查找课程类型
	 * 
	 * @param typeName
	 *            类型名称
	 * @return 课程类型
	 */
	public Coursetype findByTypeName(String typeName);
}
