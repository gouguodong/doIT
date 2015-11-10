package com.jsu.doIT.lucene.dao;

import java.io.StringReader;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.tokenattributes.CharTermAttribute;
import org.apache.lucene.document.Document;
import org.apache.lucene.index.Term;
import org.junit.Test;
import org.wltea.analyzer.lucene.IKAnalyzer;

/**
 * 测试索引
 * 
 * @author Mumu
 */

public class IndexDAOTest {

	private String filePath = "E:\\project\\maven\\.metadata\\.me_tcat\\webapps\\izhi\\post\\test.txt";
	private String indexPath = "E:\\project\\maven\\.metadata\\.me_tcat\\webapps\\izhi\\post\\lucene";

	IndexDAO indexDao = new IndexDAO();
	private IndexService indexService = new IndexService();

	/**
	 * 测试分词器
	 * 
	 * @throws Exception
	 */
	@Test
	public void testAnalyzer() throws Exception {
		Analyzer analyzer = new IKAnalyzer(true);
		System.out.println("-------分词器--------" + analyzer.getClass());
		TokenStream tokenStream = analyzer.tokenStream("content", new StringReader("Sass使你摆脱重复编写样css代码劳动。更新至2-4 课程时长：5小时0分.5天前更新 5093人学习 "));
		tokenStream.addAttribute(CharTermAttribute.class);
		while (tokenStream.incrementToken()) {
			CharTermAttribute charTermAttribute = tokenStream.getAttribute(CharTermAttribute.class);
			System.out.println(new String(charTermAttribute.buffer()));
		}
	}

	@Test
	public void testSave() throws Exception {
		// Document doc2 = FileToDocumentUtils.fileToDocument(filePath);
		// indexDao.save(doc2, filePath2);
		indexService.save(filePath);
	}

	@Test
	public void testDelete() throws Exception {
		Term term = new Term("path", filePath);
		indexDao.deleteIndex(term, indexPath);
	}

	@Test
	public void testUpdate() throws Exception {
		Term term = new Term("path", filePath);
		Document doc = FileToDocumentUtils.fileToDocument(filePath);
		indexDao.updateIndex(term, doc, indexPath);
	}

	@Test
	public void testSearch() throws Exception {
		String queryString = "重复";
		indexService.search(queryString);
	}

}
