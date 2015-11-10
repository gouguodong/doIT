package com.jsu.doIT.lucene.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.lucene.document.Document;
import org.apache.lucene.index.Term;

public class IndexService {

	private IndexDAO indexDAO = new IndexDAO();
	private List<DocumentInfo> list = new ArrayList<DocumentInfo>();
	private String indexPath = "F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\lunece";// 索引目录

	/**
	 * 建立索引
	 * 
	 * @param filepath
	 *            待建立索引的文件目录
	 * @throws Exception
	 */
	public void save(String filepath) throws Exception {
		Document document = FileToDocumentUtils.fileToDocument(filepath);
		indexDAO.save(document, indexPath);
	}

	/**
	 * 建立索引
	 * 
	 * @param filepath
	 *            文件路径
	 * @param indexPath
	 *            待建立索引的文件目录
	 * @throws Exception
	 */
	public void save(String filepath, String indexPath) throws Exception {
		Document document = FileToDocumentUtils.fileToDocument(filepath);
		indexDAO.save(document, indexPath);
	}

	/**
	 * 删除索引
	 * 
	 * @param filePath
	 *            待删除索引的文件路径
	 * @throws Exception
	 */
	public void delete(String filePath) throws Exception {
		Term term = new Term("path", filePath);
		indexDAO.deleteIndex(term, filePath);
	}

	/**
	 * 更新索引
	 * 
	 * @param filePath
	 *            待更新索引的文件目录
	 * @throws Exception
	 */
	public void update(String filePath) throws Exception {
		Term term = new Term("path", filePath);
		Document doc = FileToDocumentUtils.fileToDocument(filePath);
		indexDAO.updateIndex(term, doc, filePath);
	}

	public List<DocumentInfo> search(String queryString) throws Exception {
		QueryResult qr = indexDAO.multiAnalyzerSearch(new String[] { "content" }, queryString, indexPath, 0, 10);
		for (Document doc : qr.getRecordList()) {
			list.add(FileToDocumentUtils.getDocumentInfo(doc));
		}
		return list;
	}

	public List<DocumentInfo> search(String queryString, String indexPath) throws Exception {
		QueryResult qr = indexDAO.multiAnalyzerSearch(new String[] { "name", "content" }, queryString, indexPath, 1, 10);
		for (Document doc : qr.getRecordList()) {
			list.add(FileToDocumentUtils.getDocumentInfo(doc));
		}
		return list;
	}
}
