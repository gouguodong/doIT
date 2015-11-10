package com.jsu.doIT.lucene.dao;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;

import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.Field.Index;
import org.apache.lucene.document.Field.Store;

public class FileToDocumentUtils {

	/**
	 * 文件转化成文档对象 文件要存放：name.content.path.size
	 * 
	 * @param path
	 * @return
	 */
	public static Document fileToDocument(String path) {
		File file = new File(path);
		Document document = new Document();
		// 文件名的键值对、是否存储、是否建立索引
		document.add(new Field("name", file.getName(), Store.YES, Index.ANALYZED));
		document.add(new Field("content", readFileContent(file), Store.YES, Index.ANALYZED));
		document.add(new Field("path", path, Store.YES, Index.NO));
		document.add(new Field("size", String.valueOf(file.length()), Store.YES, Index.NOT_ANALYZED));
		return document;
	}

	/**
	 * 读取文件内容
	 * 
	 * @param file
	 * @return
	 */
	private static String readFileContent(File file) {
		if (!file.exists()) {
			return "";
		}
		StringBuffer stringBuffer = new StringBuffer();
		try {
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
			for (String line = null; (line = reader.readLine()) != null;) {
				stringBuffer.append(line).append("\n");
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return stringBuffer.toString();
	}

	/**
	 * 文档对象转换成文件
	 * 
	 * @param document
	 */
	public static void documentToFile(Document document) {

	}

	/**
	 * <pre>
	 * 获取name属性值的两种方法：
	 * 1.	Field field = doc.getField("name");
	 * 		field.stringValue();
	 * 2.	doc.get("name");
	 * </pre>
	 * 
	 * @param doc
	 */
	public static void printDocumentInfo(Document doc) {
		System.out.println("-----------------------");
		System.out.println("name = " + doc.get("name"));
		System.out.println("content = " + doc.get("content"));
		System.out.println("path = " + doc.get("path"));
		System.out.println("size = " + doc.get("size"));
	}

	/**
	 * 解析文档信息
	 * 
	 * @param doc
	 * @return
	 */
	public static DocumentInfo getDocumentInfo(Document doc) {
		DocumentInfo info = new DocumentInfo();

		info.setName(doc.get("name"));
		info.setSize(doc.get("size"));
		info.setPath(doc.get("path"));
		info.setContent(doc.get("content"));

		return info;
	}
}
