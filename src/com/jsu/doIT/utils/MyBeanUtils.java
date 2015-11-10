package com.jsu.doIT.utils;

import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.Converter;

@SuppressWarnings("rawtypes")
public class MyBeanUtils {

	static {
		ConvertUtils.register(new Converter() {
			@Override
			public Object convert(Class type, Object value) {
				if (value == null) {
					return null;
				}
				String val = (String) value;
				String[] vals = val.split("[^0-9]");
				int[] times = new int[6];
				for (int i = 0; i < vals.length; i++) {
					times[i] = Integer.parseInt(vals[i]);
				}
				Calendar c = Calendar.getInstance();
				c.set(times[0], times[1], times[2], times[3], times[4], times[5]);
				return c.getTime();
			}
		}, Date.class);
		ConvertUtils.register(new Converter() {
			@Override
			public Object convert(Class type, Object value) {
				if (value == null) {
					return null;
				}
				String val = (String) value;
				String[] vals = val.split("[^0-9]");
				int[] times = new int[6];
				for (int i = 0; i < vals.length; i++) {
					times[i] = Integer.parseInt(vals[i]);
				}
				Calendar c = Calendar.getInstance();
				c.set(times[0], times[1], times[2], times[3], times[4], times[5]);
				return c.getTime();
			}
		}, Date.class);
		ConvertUtils.register(new Converter() {
			@Override
			public Object convert(Class type, Object value) {
				if (value == null) {
					return null;
				}
				if (!(value instanceof Date)) {
					return value.toString();
				}
				Date date = (Date) value;
				String ret = "";
				SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				ret = sf.format(date);
				return ret;
			}
		}, String.class);
	}

	public static void copy(Object dest, Object src) {
		try {
			BeanUtils.copyProperties(dest, src);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	public static void copyList(List dests, List srcs, Class destType) {
		for (Object src : srcs) {
			try {
				Object dest = destType.newInstance();
				copy(dest, src);
				dests.add(dest);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
