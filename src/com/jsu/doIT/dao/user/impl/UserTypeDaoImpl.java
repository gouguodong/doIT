package com.jsu.doIT.dao.user.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.user.UsertypeDao;
import com.jsu.doIT.po.Usertype;

@Repository(value = "usertypeDao")
public class UserTypeDaoImpl extends DaoSupportImpl<Usertype> implements UsertypeDao {

}
