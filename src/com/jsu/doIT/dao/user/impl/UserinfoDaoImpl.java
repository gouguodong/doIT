package com.jsu.doIT.dao.user.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.user.UserinfoDao;
import com.jsu.doIT.po.Userinfo;

@Repository(value = "userinfoDao")
public class UserinfoDaoImpl extends DaoSupportImpl<Userinfo> implements UserinfoDao {

}
