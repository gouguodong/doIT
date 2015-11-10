package com.jsu.doIT.dao.city.impl;

import org.springframework.stereotype.Repository;

import com.jsu.doIT.base.DaoSupportImpl;
import com.jsu.doIT.dao.city.ProvinceDao;
import com.jsu.doIT.po.Province;

@Repository(value = "provinceDao")
public class ProvinceDaoImpl extends DaoSupportImpl<Province> implements ProvinceDao {

}
