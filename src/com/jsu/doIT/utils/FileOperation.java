package com.jsu.doIT.utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/**
 * 文件操作类 帖子发布与回复
 * 
 * @author hadoop
 */

public class FileOperation {

	/**
	 * 创建文件
	 * 
	 * @param fileName
	 * @return
	 * @throws Exception
	 */
	public static boolean createFile(File fileName) throws Exception {
		boolean flag = false;
		if (!fileName.exists()) {
			fileName.createNewFile();
			flag = true;
		}
		return flag;
	}

	/**
	 * 读取文件中的内容
	 * 
	 * @param fileName
	 * @return
	 */
	public static String readTxtFile(File fileName) {
		String result = null;
		FileReader fileReader = null;
		BufferedReader bufferedReader = null;

		try {
			fileReader = new FileReader(fileName);
			bufferedReader = new BufferedReader(fileReader);

			String read = null;
			while ((read = bufferedReader.readLine()) != null) {
				result = result + read + System.getProperty("line.separator");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (bufferedReader != null) {
					bufferedReader.close();
				}
				if (fileReader != null) {
					fileReader.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	/**
	 * 向已有的文件中写入新的内容
	 * 
	 * @param content
	 * @param fileName
	 * @return
	 */
	public static boolean writeTxtFile(String content, File fileName) {
		boolean flag = false;
		FileOutputStream outputStream = null;
		try {
			outputStream = new FileOutputStream(fileName);
			outputStream.write(content.getBytes("GBK"));
			outputStream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	/**
	 * 将文本内容写入到文件中去
	 * 
	 * @param filePath 文件目录 、到用户标识目录
	 * @param upMenu 文件发表时间
	 * @param fileName 文件发表时间.txt
	 * @param content 帖子/问答内容
	 */
	public static void contentToTxT(String filePath, String upMenu, String fileName, String content) {
		String string = new String(); // 原有的txt内容
		String update = new String(); // 内容更新
		try {
			File file = new File(filePath);
			if (!file.exists() && !file.isDirectory()) {
				file.mkdir();
			}
			file = new File(filePath + "\\" + upMenu);
			if (!file.exists() && !file.isDirectory()) {
				file.mkdir();
			}
			file = new File(filePath + "\\" + upMenu + "\\" + fileName);
			file.createNewFile(); // 创建文件

			BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
			while ((string = bufferedReader.readLine()) != null) {
				update = update + string + System.getProperty("line.separator");
			}
			update += content;
			bufferedReader.close();

			BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
			bufferedWriter.write(update);
			bufferedWriter.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
