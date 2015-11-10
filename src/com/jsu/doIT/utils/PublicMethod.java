package com.jsu.doIT.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

/**
 * 全局函数、MD5加密
 * 
 * @author hadoop
 * 
 */

public abstract class PublicMethod {

	/**
	 * MD5加密
	 * 
	 * @param data
	 *            待加密字符串
	 * @return 加密后的字符串
	 */
	public static String md5(String data) {
		return DigestUtils.md5Hex(data);
	}

	/**
	 * 文件上传
	 * 
	 * @param path
	 *            文件保存路径
	 * @param myFile
	 *            文件
	 * @param fileName
	 *            文件名
	 * @param fileType
	 *            文件类型
	 * @return 文件路径
	 */
	public static String upload(String path, File myFile, String fileName, String fileType) {
		String realpath = ServletActionContext.getServletContext().getRealPath("\\course");
		String filePath = realpath + "\\" + path;
		String result = "course/" + path + "/" + new Date();
		if (myFile != null) {
			File savefile = new File(new File(filePath), fileName);
			if (!savefile.getParentFile().exists()) {
				savefile.getParentFile().mkdirs();
			}
			// 如果文件已经存在、则开始续传
			if (savefile.exists()) {
				long size = savefile.length(); // 或的已保存文件大小
				RandomAccessFile accessFile; // 保存文件
				try {
					accessFile = new RandomAccessFile(savefile, "rw"); // 保存的文件
					InputStream inputStream = new FileInputStream(myFile); // 输出流
					accessFile.seek(size); // 跳过size长度开始保存文件
					int len = 0;
					byte[] b = new byte[1024];
					inputStream.skip(size); // 跳过size长度开始输出文件
					while ((len = inputStream.read(b, 0, 1024)) > 0) {
						accessFile.write(b, 0, len);
					}
					return result;
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else {
				try {
					FileUtils.copyFile(myFile, savefile);
					return result;
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}

	/**
	 * 获取到图片的可显示路径
	 * 
	 * @param url
	 * @return
	 */
	public static String changeImgURL(String url) {
		String result = url;
		if (url.contains("\\")) {
			result = url.replace("\\", "/");
		}
		return result;
	}

	/**
	 * 验证邮箱是否合法
	 * 
	 * @param email
	 *            邮箱
	 * @return
	 */
	public static Boolean verifyEmail(String email) {
		String check = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
		Pattern regex = Pattern.compile(check);
		Matcher matcher = regex.matcher(email);
		return matcher.matches();
	}
}
