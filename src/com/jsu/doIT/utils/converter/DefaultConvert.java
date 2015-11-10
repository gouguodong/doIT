package com.jsu.doIT.utils.converter;

import java.util.HashMap;
import java.util.Map;

/**
 * Class<->字符串 默认转换器(八大基本数据类型)
 * 
 * @author hadoop
 * 
 */
public class DefaultConvert implements Convert<Object> {

	private static Map<Class<?>, Class<?>> clsMap = new HashMap<Class<?>, Class<?>>();
	private Class<?> cls;

	public void setCls(Class<?> cls) {
		this.cls = clsMap.get(cls) == null ? cls : clsMap.get(cls);
	}

	static {
		clsMap.put(byte.class, Byte.class);
		clsMap.put(short.class, Short.class);
		clsMap.put(int.class, Integer.class);
		clsMap.put(long.class, Long.class);
		clsMap.put(float.class, Float.class);
		clsMap.put(double.class, Double.class);
		clsMap.put(char.class, Character.class);
		clsMap.put(boolean.class, Boolean.class);
	}

	/**
	 * 将Class转换成字符串
	 */
	@Override
	public String toString(Object t) {
		try {
			if (t == null) {
				return "null";
			}
			return (String) t.getClass().getMethod("toString").invoke(t);
		} catch (Exception e) {
			throw new ConvertException("转化为字符串异常", e);
		}
	}

	/**
	 * 将字符串转换成Class
	 */
	@Override
	public Object fromString(String value) {
		try {
			if ("null".equals(value)) {
				return null;
			}
			if (cls == Character.class) {
				Object c = value.charAt(0);
				return c;
			}
			if (cls == String.class) {
				return value;
			}
			return cls.getMethod("valueOf", String.class).invoke(null, value);
		} catch (Exception ex) {
			throw new ConvertException("将字符串[" + value + "]转换为当前数据类型[" + cls.getName() + "]出错", ex);
		}
	}

}