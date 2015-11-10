package com.jsu.doIT.dao.teacher.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.teacher.TeacherDao;
import com.jsu.doIT.po.Teacher;

@Repository(value = "teacherDao")
public class TeacherDaoImpl extends DaoSupportImpl<Teacher> implements TeacherDao {

}
