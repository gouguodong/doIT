package com.jsu.doIT.lucene.dao;

public class DocumentInfo {

	private String name;		//文档名
	private String size;		//文档大小
	private String path;		//文档路径
	private String content;		//文档内容
	
	public DocumentInfo() {
		super();
	}
	public DocumentInfo(String name, String size, String path, String content) {
		super();
		this.name = name;
		this.size = size;
		this.path = path;
		this.content = content;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
