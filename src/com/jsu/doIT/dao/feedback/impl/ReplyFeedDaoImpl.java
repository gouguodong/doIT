package com.jsu.doIT.dao.feedback.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.feedback.ReplyFeedDao;
import com.jsu.doIT.po.Replyfeed;

@Repository(value = "replyFeedDao")
public class ReplyFeedDaoImpl extends DaoSupportImpl<Replyfeed> implements ReplyFeedDao {

}
