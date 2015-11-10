package com.jsu.doIT.dao.code.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.code.CodeTypeDao;
import com.jsu.doIT.po.Codetype;

@Repository(value = "codeTypeDao")
public class CodeTypeDaoImpl extends DaoSupportImpl<Codetype> implements CodeTypeDao {

}
