package com.jsu.doIT.vo;

import net.sf.json.JSONObject;

public class CompileRunJavaCodeResult {

	/**
	 * 编译失败的状态码
	 */
	public static final int COMPILE_FAIL = 1;
	
	/**
	 *运行失败的状态码
	 */
	public static final int RUN_FAIL = 2;
	
	/**
	 * 运行成功的状态码 
	 */
	public static final int SUCCESS = 3;
	
	
	public CompileRunJavaCodeResult() {
	}

	public CompileRunJavaCodeResult(int status, String result) {
		this.status = status;
		this.result = result;
	}
	
	/**
	 * 返回状态码
	 */
	private int status;
	/**
	 * 返回的数据
	 */
	private String result;

	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
	@Override
	public String toString() {
//		return "{\"status\": "+status+",\"result\": \""+result+"\"}";
		return JSONObject.fromObject(this).toString(); 
	}
	
}
