package com.jsu.doIT.dao.post.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.post.PostLabelDao;
import com.jsu.doIT.po.Postlabel;

@Repository(value = "postLabelDao")
public class PostLabelDaoImpl extends DaoSupportImpl<Postlabel> implements PostLabelDao {

}
