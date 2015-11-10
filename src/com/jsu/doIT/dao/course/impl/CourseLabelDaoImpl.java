package com.jsu.doIT.dao.course.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.course.CourseLabelDao;
import com.jsu.doIT.po.Courselabel;

@Repository(value = "courseLabelDao")
public class CourseLabelDaoImpl extends DaoSupportImpl<Courselabel> implements CourseLabelDao {

}
