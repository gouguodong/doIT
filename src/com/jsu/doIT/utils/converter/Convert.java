package com.jsu.doIT.utils.converter;

/**
 * 自定义转换器接口
 * 
 * @author hadoop
 * 
 * @param <T>
 */

public interface Convert<T> {

	/**
	 * 将T转化成字符串
	 * 
	 * @param t
	 * @return
	 */
	String toString(Object t);

	/**
	 * 将字符串转化为T
	 * 
	 * @param value
	 * @return
	 */
	T fromString(String value);

}