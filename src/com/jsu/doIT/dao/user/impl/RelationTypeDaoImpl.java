package com.jsu.doIT.dao.user.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.user.RelationTypeDao;
import com.jsu.doIT.po.Relationtype;

@Repository(value = "relationTypeDao")
public class RelationTypeDaoImpl extends DaoSupportImpl<Relationtype> implements RelationTypeDao {

}
