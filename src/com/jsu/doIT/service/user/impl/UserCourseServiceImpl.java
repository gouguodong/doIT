package com.jsu.doIT.service.user.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.user.UserCourseDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Usercourse;
import com.jsu.doIT.service.user.UserCourseService;
import com.jsu.doIT.vo.PageVO;

@Transactional
@Service(value = "userCourseService")
public class UserCourseServiceImpl extends DaoSupportImpl<Usercourse> implements UserCourseService {

	@Resource
	private UserCourseDao dao;

	@Override
	public void save(Usercourse entity) {
		// TODO Auto-generated method stub
		super.save(entity);
	}

	@Override
	public void delete(Usercourse entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(Usercourse entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public Usercourse findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(id);
	}

	@Override
	public List<Usercourse> findByIds(Integer[] ids) {
		// TODO Auto-generated method stub
		return super.findByIds(ids);
	}

	@Override
	public List<Usercourse> findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return super.findByProperty(propertyName, value);
	}

	@Override
	public List<Usercourse> findAll() {
		// TODO Auto-generated method stub
		return super.findAll();
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return super.getPageBean(pageNum, pageSize, queryHelper);
	}

	@Override
	public PageBean findAttentionCourse(Integer currentPage, Integer PageSize, Integer typeId, Integer userId) {
		// TODO Auto-generated method stub
		return dao.findAttentionCourse(currentPage, PageSize, typeId, userId);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Usercourse> findUsercoursePage(PageVO vo) {
		Session session = getSession();
		String hql = "select count(*)  from Usercourse";
		Query query = session.createQuery(hql);
		int count = ((Long) query.iterate().next()).intValue();
		vo.setTotal(count);
		query = session.createQuery("from Usercourse");
		query.setFirstResult(vo.getPage() * vo.getRows());
		query.setMaxResults(vo.getRows());
		List<Usercourse> list = query.list();
		return list;
	}

	@Override
	public Usercourse findByUserIdAndCourseId(Integer userId, Integer courseId) {
		return dao.findByUserIdAndCourseId(userId, courseId);
	}

}
