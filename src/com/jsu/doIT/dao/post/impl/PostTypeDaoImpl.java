package com.jsu.doIT.dao.post.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.post.PostTypeDao;
import com.jsu.doIT.po.Posttype;

@Repository(value = "postTypeDao")
public class PostTypeDaoImpl extends DaoSupportImpl<Posttype> implements PostTypeDao {

}
