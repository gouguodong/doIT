package com.jsu.doIT.dao.user.impl;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.user.StudyDao;
import com.jsu.doIT.pageBase.PageBean;
import com.jsu.doIT.pageBase.QueryHelper;
import com.jsu.doIT.po.Study;
import com.jsu.doIT.po.Usercourse;

@Repository(value = "studyDao")
public class StudyDaoImpl extends DaoSupportImpl<Study> implements StudyDao {

	@SuppressWarnings("unchecked")
	@Override
	public PageBean findStudyByUserId(Integer userId, Integer status, Integer pageNuber, Integer pageSize) {
		PageBean studys = null;
		QueryHelper queryHelper = new QueryHelper(Study.class, "study");
		queryHelper.addCondition("user.userId = ?", userId);
		queryHelper.addOrderProperty("studyDate", false);
		studys = getPageBean(pageNuber, pageSize, queryHelper);
		List<Study> list = (List<Study>) studys.getRecordList();
		for (Study study : list) {
			Set<Usercourse> usercourses = study.getUsercourses();
			// System.out.println("courses:::"+study.getUsercourses().size());
			Set<Usercourse> _new = new HashSet<Usercourse>();
			for (Usercourse usercourse : usercourses) {
				if (usercourse != null) {
					// System.out.println("typeId:::"+usercourse.getRelationtype().getTypeId());
					if (usercourse.getRelationtype().getTypeId().compareTo(status) == 0) {
						Usercourse _newUsercourse = new Usercourse();
						_newUsercourse = usercourse;
						_newUsercourse.setCourse(usercourse.getCourse());
						// System.out.println(_newUsercourse.getCourse().getCourseName());
						_new.add(usercourse);
					}
				}

			}
			study.setUsercourses(_new);
		}
		return studys;
	}

	@Override
	public Study findByUserIdAndTime(Integer userId, Date date) {
		Study study = null;
		String queryString = "from Study where user.userId = ? and studyDate = ?";
		study = (Study) getSession().createQuery(queryString).setParameter(0, userId).setDate(1, date).uniqueResult();
		return study;
	}

}
