package com.jsu.doIT.utils.converter;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

/**
 * 转换器工厂
 * 
 * @author hadoop
 * 
 */

public class ConvertFactory {

	private static Map<Class<?>, Convert<?>> map = new HashMap<Class<?>, Convert<?>>();
	private static DefaultConvert defaultConvert = new DefaultConvert();

	static {
		try {
			java.util.Properties config = new java.util.Properties();
			config.load(ConvertFactory.class.getResourceAsStream("config.properties"));
			for (Object obj : config.keySet()) {
				try {
					String key = (String) obj;
					String value = config.getProperty(key);
					map.put(Class.forName(key), (Convert<?>) Class.forName(value).newInstance());
				} catch (Exception ex1) {
					Logger.getLogger(Logger.GLOBAL_LOGGER_NAME).log(java.util.logging.Level.WARNING, "初始化类型转换器错误", ex1);
				}
			}
		} catch (Exception ex) {
			Logger.getLogger(Logger.GLOBAL_LOGGER_NAME).log(java.util.logging.Level.INFO, "读取失败", ex);
		}
	}

	@SuppressWarnings("unchecked")
	public static <T> Convert<T> getConvert(Class<T> cls) {

		Convert<T> convert = null;
		if (map.get(cls) == null) {
			defaultConvert.setCls(cls);
			return (Convert<T>) defaultConvert;
		} else {
			convert = (Convert<T>) map.get(cls);
		}
		return convert;
	}

}
