package com.jsu.doIT.lucene.dao;

import java.util.ArrayList;
import java.util.List;

public class DocumentInfos {

	private Integer count;				//记录总数
	private List<DocumentInfo> list = new ArrayList<DocumentInfo>();	//记录集合
	
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public List<DocumentInfo> getList() {
		return list;
	}
	public void setList(List<DocumentInfo> list) {
		this.list = list;
	}
}
