package com.jsu.doIT.lucene.dao;

import java.io.File;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Fieldable;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.Term;
import org.apache.lucene.queryParser.MultiFieldQueryParser;
import org.apache.lucene.queryParser.QueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.PrefixQuery;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TermQuery;
import org.apache.lucene.search.TopScoreDocCollector;
import org.apache.lucene.search.WildcardQuery;
import org.apache.lucene.search.highlight.Formatter;
import org.apache.lucene.search.highlight.Highlighter;
import org.apache.lucene.search.highlight.QueryScorer;
import org.apache.lucene.search.highlight.SimpleHTMLFormatter;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;
import org.wltea.analyzer.lucene.IKAnalyzer;

/**
 * 索引DAO
 * 
 * @author Mumu
 */

public class IndexDAO {

	private static Analyzer analyzer = new IKAnalyzer(true);// 分词器
	private static Version version = Version.LUCENE_36; // 版本
	private static IndexWriterConfig conf = new IndexWriterConfig(version, analyzer); // 配置
	private static IndexWriter indexWriter;
	private List<Document> recordList = new ArrayList<Document>();

	/**
	 * 添加索引
	 * 
	 * @param document
	 *            待建立索引的文件
	 * @param indexPath
	 *            建立索引的目录
	 * @throws Exception
	 */
	public void save(Document document, String indexPath) throws Exception {
		Directory directory = FSDirectory.open(new File(indexPath));
		indexWriter = new IndexWriter(directory, conf);

		indexWriter.addDocument(document);
		indexWriter.commit();
		indexWriter.close();
	}

	/**
	 * 删除索引
	 * 
	 * @param term
	 * @param indexPath
	 *            建立索引的目录
	 * @throws Exception
	 */
	public void deleteIndex(Term term, String indexPath) throws Exception {
		Directory directory = FSDirectory.open(new File(indexPath));
		indexWriter = new IndexWriter(directory, conf);

		indexWriter.deleteDocuments(term);
		indexWriter.commit();
	}

	/**
	 * 更新索引
	 * 
	 * @param document
	 *            待建立索引的文件
	 * @param indexPath
	 *            建立索引的目录
	 * @throws Exception
	 */
	public void updateIndex(Term term, Document document, String indexPath) throws Exception {
		Directory directory = FSDirectory.open(new File(indexPath));
		indexWriter = new IndexWriter(directory, conf);

		indexWriter.updateDocument(term, document);
		indexWriter.commit();
		indexWriter.close();
	}

	/**
	 * 直接查询
	 * 
	 * @param filedStr
	 * @param queryStr
	 * @param indexPath
	 * @param page
	 * @param pageSize
	 * @throws Exception
	 */
	public QueryResult simpleSearch(String filedStr, String queryStr, String indexPath, int page, int pageSize) throws Exception {
		Directory directory = FSDirectory.open(new File(indexPath));
		IndexReader reader = IndexReader.open(directory);
		IndexSearcher searcher = new IndexSearcher(reader);
		TopScoreDocCollector topCollector = TopScoreDocCollector.create(searcher.maxDoc(), false);

		Term term = new Term(filedStr, queryStr);
		Query query = new TermQuery(term);
		searcher.search(query, topCollector);
		ScoreDoc[] docs = topCollector.topDocs((page - 1) * pageSize, pageSize).scoreDocs;

		printScoreDoc(docs, searcher);
		return null;
	}

	/**
	 * 高亮查询
	 * 
	 * @param filedStr
	 * @param queryStr
	 * @param indexPath
	 * @param page
	 * @param pageSize
	 * @throws Exception
	 */
	public QueryResult highLightSearch(String filedStr, String queryStr, String indexPath, int page, int pageSize)
			throws Exception {
		Directory directory = FSDirectory.open(new File(indexPath));
		IndexReader reader = IndexReader.open(directory);
		IndexSearcher searcher = new IndexSearcher(reader);
		TopScoreDocCollector topCollector = TopScoreDocCollector.create(searcher.maxDoc(), false);

		Term term = new Term(filedStr, queryStr);
		Query query = new TermQuery(term);
		searcher.search(query, topCollector);
		ScoreDoc[] docs = topCollector.topDocs((page - 1) * pageSize, pageSize).scoreDocs;

		Formatter formatter = new SimpleHTMLFormatter("<span>", "</span>");
		Highlighter highlighter = new Highlighter(formatter, new QueryScorer(query));
		for (int i = 0; i < docs.length; i++) {
			List<Fieldable> list = searcher.doc(docs[i].doc).getFields();
			for (Fieldable fieldable : list) {
				String fieldName = fieldable.name();
				String fieldValue = fieldable.stringValue();
				TokenStream ts = analyzer.tokenStream(fieldName, new StringReader(fieldValue));
				String frament = highlighter.getBestFragment(ts, fieldValue);
				System.out.println(fieldName + " : " + frament);
			}
		}
		return null;
	}

	/**
	 * 根据前缀查询
	 * 
	 * @param filedStr
	 * @param queryStr
	 * @param indexPath
	 * @throws Exception
	 */
	public QueryResult prefixSearch(String filedStr, String queryStr, String indexPath) throws Exception {
		Directory directory = FSDirectory.open(new File(indexPath));
		IndexReader reader = IndexReader.open(directory);
		IndexSearcher searcher = new IndexSearcher(reader);

		Term term = new Term(filedStr, queryStr);
		Query query = new PrefixQuery(term);

		ScoreDoc[] docs = searcher.search(query, 3).scoreDocs;
		printScoreDoc(docs, searcher);
		return null;
	}

	/**
	 * 通配符查询
	 * 
	 * @param filedStr
	 * @param queryStr
	 * @param indexPath
	 * @throws Exception
	 */
	public QueryResult wildcardSearch(String filedStr, String queryStr, String indexPath) throws Exception {
		Directory directory = FSDirectory.open(new File(indexPath));
		IndexReader reader = IndexReader.open(directory);
		IndexSearcher searcher = new IndexSearcher(reader);

		Term term = new Term(filedStr, queryStr);
		Query query = new WildcardQuery(term);

		ScoreDoc[] docs = searcher.search(query, 3).scoreDocs;
		printScoreDoc(docs, searcher);
		return null;
	}

	/**
	 * 分词查询
	 * 
	 * @param filedStr
	 * @param queryStr
	 * @param indexPath
	 * @throws Exception
	 */
	public QueryResult analyzerSearch(String filedStr, String queryStr, String indexPath) throws Exception {
		Directory directory = FSDirectory.open(new File(indexPath));
		IndexReader reader = IndexReader.open(directory);
		IndexSearcher searcher = new IndexSearcher(reader);

		QueryParser queryParser = new QueryParser(version, filedStr, analyzer);
		Query query = queryParser.parse(queryStr);

		ScoreDoc[] docs = searcher.search(query, 3).scoreDocs;
		printScoreDoc(docs, searcher);

		return null;
	}

	/**
	 * 多属性分词查询
	 * 
	 * @param filedStr
	 * @param queryStr
	 * @param indexPath
	 * @throws Exception
	 */
	@SuppressWarnings("deprecation")
	public QueryResult multiAnalyzerSearch(String[] filedStr, String queryStr, String indexPath, int page, int pageSize)
			throws Exception {
		Directory directory = FSDirectory.open(new File(indexPath));
		IndexReader reader = IndexReader.open(directory);
		IndexSearcher searcher = new IndexSearcher(reader);
		QueryParser queryParser = new MultiFieldQueryParser(version, filedStr, analyzer);
		Query query = queryParser.parse(queryStr);

		ScoreDoc[] docs = searcher.search(query, 3).scoreDocs;
		printScoreDoc(docs, searcher);

		Formatter formatter = new SimpleHTMLFormatter("<font color='red'>", "</font>");
		Highlighter highlighter = new Highlighter(formatter, new QueryScorer(query));
		int firstResult = (page - 1) * pageSize;
		int end = page * pageSize > docs.length ? docs.length : page * pageSize;
		for (int i = firstResult; i < end; i++) {
			ScoreDoc scoreDoc = docs[i];
			Document document = searcher.doc(scoreDoc.doc);
			String hc = highlighter.getBestFragment(analyzer, "content", document.get("content"));
			if (hc == null) {
				String content = document.get("content");
				int endIndex = Math.min(50, content.length());
				hc = content.substring(0, endIndex);// 最多前50个字符
			}
			document.getField("content").setValue(hc);
			recordList.add(document);
		}
		return new QueryResult(recordList.size(), recordList);
	}

	/**
	 * 打印
	 * 
	 * @param docs
	 * @param searcher
	 * @throws Exception
	 */
	private void printScoreDoc(ScoreDoc[] docs, IndexSearcher searcher) throws Exception {
		for (int i = 0; i < docs.length; i++) {
			List<Fieldable> list = searcher.doc(docs[i].doc).getFields();
			for (Fieldable fieldable : list) {
				String fieldName = fieldable.name();
				String fieldValue = fieldable.stringValue();
				System.out.println(fieldName + " : " + fieldValue);
			}
		}
	}

}
