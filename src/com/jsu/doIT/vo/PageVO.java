package com.jsu.doIT.vo;

public class PageVO {

	/**
	 * 一页有多少行数据
	 */
	private int rows = 6;
	/**
	 * 当前页码
	 */
	private int page = 0;
	/**
	 * 数据总行数
	 */
	private int total; 

	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
}
