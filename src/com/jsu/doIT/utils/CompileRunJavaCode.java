package com.jsu.doIT.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import com.jsu.doIT.vo.CompileRunJavaCodeResult;

public class CompileRunJavaCode {

	public static final String  SUFFIX = ".java";
	public static CompileRunJavaCodeResult codeResult;
	
	/**
	 * 编译运行java代码
	 * @param className	主类名
	 * @param code	java源代码
	 * @return
	 */
	public static CompileRunJavaCodeResult exec(String className, String code, String runArgs) {
		String javaName = className + SUFFIX;
		
		// 1. 把字符串转换成java文件
		createFile(code, javaName);
		
		//2. 编译java文件
		boolean compileResult = compile(javaName);
		if (compileResult == false) {
			deleteFile(new File(javaName));
			return codeResult;
		}
		
		//3. 运行java字节码文件
		BufferedReader errorReader = null;
		BufferedReader successReader = null;
		
		try {
			Process process = Runtime.getRuntime().exec("java " + className + " " + runArgs);
//			System.out.println(process);
			errorReader = new BufferedReader(new InputStreamReader(process.getErrorStream()));
			successReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
			StringBuffer errorBuffer = new StringBuffer();
			StringBuffer successBuffer = new StringBuffer();
			String line;
			while (( line = errorReader.readLine()) != null) {
				//System.out.println(line);
				errorBuffer.append(line + "\n");
			}
			while (( line = successReader.readLine()) != null) {
				successBuffer.append(line + "\n");
			}
			process.waitFor();
			String errorResult = errorBuffer.toString();
			String successResult = successBuffer.toString();
			if ("".equals(errorResult.trim())) {
				//运行成功
				codeResult = new CompileRunJavaCodeResult(CompileRunJavaCodeResult.SUCCESS, successResult);
			} else {
				//运行失败
				codeResult = new CompileRunJavaCodeResult(CompileRunJavaCodeResult.RUN_FAIL, errorResult);
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		} finally {
			if (errorReader != null) {
				try {
					errorReader.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
				errorReader = null;
			}
			
			if (successReader != null) {
				try {
					successReader.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
				successReader = null;
			}
		}
		
		deleteFile(new File(className + ".java"));
		deleteFile(new File(className + ".class"));
		return codeResult;
	}

	/**
	 * 生成一个Java文件
	 * @param code	Java源代码
	 * @param javaName	文件名
	 */
	private static File createFile(String code, String javaName) {
		File file = new File(javaName);
		PrintWriter out = null;
		try {
			// 创建一个文件
			file.createNewFile();
			
			System.out.println(file.getAbsolutePath());
			out = new PrintWriter(file);
			out.write(code);
		} catch (IOException e) {
			throw new RuntimeException(e);
		} finally {
			if (out != null) {
				out.close();
				out = null;
			}
		}
		return file;
	}

	private static boolean compile(String javaName) {
		boolean returncode = true;
		
		BufferedReader reader = null;
		try {
			Process process = Runtime.getRuntime().exec("javac " + javaName);
//			System.out.println(process);
			reader = new BufferedReader(new InputStreamReader(process.getErrorStream()));
			StringBuffer buffer = new StringBuffer();
			String line;
			while (( line = reader.readLine()) != null) {
				//System.out.println(line);
				buffer.append(line + "\n");
			}
			process.waitFor();
			String result = buffer.toString();
			
			// 编译失败
			if (!"".equals(result.trim())) {
				returncode = false;
				codeResult = new CompileRunJavaCodeResult(CompileRunJavaCodeResult.COMPILE_FAIL, result);
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		} finally {
			try {
				reader.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return returncode;
	}
	
	/**
	 * 删除一个文件
	 * @param file 要删除的文件对象
	 */
	public static void deleteFile(File file) {
		if(file.exists()) {
			file.delete();
		}
	}
}
