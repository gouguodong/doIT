package com.jsu.doIT.dao.course.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.course.CourseCommentDao;
import com.jsu.doIT.po.Coursecomment;

@Repository(value = "courseCommentDao")
public class CourseCommentDaoImpl extends DaoSupportImpl<Coursecomment> implements CourseCommentDao {

}
