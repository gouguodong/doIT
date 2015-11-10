package com.jsu.doIT.dao.post.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.post.ResourceTypeDao;
import com.jsu.doIT.po.Resourcetype;

@Repository(value = "resourceTypeDao")
public class ResourceTypeDaoImpl extends DaoSupportImpl<Resourcetype> implements ResourceTypeDao {

}
