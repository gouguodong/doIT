package com.jsu.doIT.lucene.dao;

import java.util.List;

import org.apache.lucene.document.Document;

public class QueryResult {

	private Integer recordCount;				//记录总数
	private List<Document> recordList;			//记录集合
	
	public QueryResult(Integer recordCount, List<Document> recordList) {
		super();
		this.recordCount = recordCount;
		this.recordList = recordList;
	}

	public Integer getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(Integer recordCount) {
		this.recordCount = recordCount;
	}

	public List<Document> getRecordList() {
		return recordList;
	}

	public void setRecordList(List<Document> recordList) {
		this.recordList = recordList;
	}
	
}
