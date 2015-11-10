package com.jsu.doIT.utils.converter;

/**
 * Class与字符串的相互转换
 * 
 * @author hadoop
 * 
 */
public class ClassConvert implements Convert<Class<?>> {

	/**
	 * 将Class转换成字符串
	 */
	@Override
	public String toString(Object t) {
		return ((Class<?>) t).getName();
	}

	/**
	 * 将字符串转换成Class
	 */
	@Override
	public Class<?> fromString(String value) {
		try {
			return Class.forName(value);
		} catch (ClassNotFoundException e) {
			throw new ConvertException("将字符串转换为Class错误", e);
		}
	}

}