package com.jsu.doIT.utils.converter;

import java.lang.reflect.InvocationTargetException;

import org.apache.commons.beanutils.BeanUtils;

public class CustomerBeanUtil extends BeanUtils {
	
	public static void copyProperties(Object target, Object source) throws InvocationTargetException, IllegalAccessException {
		BeanUtils.copyProperties(target, source);
	}

}