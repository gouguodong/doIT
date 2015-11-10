package com.jsu.doIT.dao.post.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.post.PostResourceDao;
import com.jsu.doIT.po.Postresource;

@Repository(value = "postResourceDao")
public class PostResourceDaoImpl extends DaoSupportImpl<Postresource> implements PostResourceDao {

}
