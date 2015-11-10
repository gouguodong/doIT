package com.jsu.doIT.dao.group.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.group.UserGroupDao;
import com.jsu.doIT.po.Usergroup;

@Repository(value = "userGroupDao")
public class UserGroupDaoImpl extends DaoSupportImpl<Usergroup> implements UserGroupDao {

}
