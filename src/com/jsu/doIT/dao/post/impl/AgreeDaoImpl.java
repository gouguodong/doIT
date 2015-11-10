package com.jsu.doIT.dao.post.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.post.AgreeDao;
import com.jsu.doIT.po.Agree;

@Repository(value = "agreeDao")
public class AgreeDaoImpl extends DaoSupportImpl<Agree> implements AgreeDao {

}
