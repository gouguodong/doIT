package com.jsu.doIT.dao.user.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.user.UserLabelDao;
import com.jsu.doIT.po.Userlabel;

@Repository(value = "userLabelDao")
public class UserLabelDaoImpl extends DaoSupportImpl<Userlabel> implements UserLabelDao {

}
