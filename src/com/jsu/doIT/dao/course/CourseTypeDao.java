package com.jsu.doIT.dao.course;

import java.util.List;
import java.util.Set;

import com.jsu.doIT.base.DaoSupport;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.po.Coursetype;

public interface CourseTypeDao extends DaoSupport<Coursetype> {

	/**
	 * 查找所有父类型
	 * 
	 * @return 父类型列表
	 */
	public List<Coursetype> findFatherType();

	/**
	 * 根据父类型编号、查找他所有的子类型
	 * 
	 * @param typeId
	 * @return 子类型集合
	 */
	public Set<Coursetype> findChlidByFatherId(Integer typeId);

	/**
	 * 查找所有二级课程类型
	 * 
	 * @return
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
	 * @return
	 */
	public PageBean findChildTypePage(Integer currentPage, Integer pageSize, Integer... coursetypeId);

	/**
	 * 根据课程名查找课程类型
	 * 
	 * @param typeName
	 * @return
	 */
	public Coursetype findByTypeName(String typeName);

}
