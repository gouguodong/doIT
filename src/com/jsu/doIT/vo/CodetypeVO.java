package com.jsu.doIT.vo;

public class CodetypeVO implements java.io.Serializable {

	private static final long serialVersionUID = 5506097004704764503L;

	private Integer typeId;
	private String typeName;
	private String typeDesc;

	public CodetypeVO() {
	}

	public CodetypeVO(String typeName) {
		this.typeName = typeName;
	}

	public CodetypeVO(String typeName, String typeDesc) {
		this.typeName = typeName;
		this.typeDesc = typeDesc;
	}

	public Integer getTypeId() {
		return this.typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return this.typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getTypeDesc() {
		return this.typeDesc;
	}

	public void setTypeDesc(String typeDesc) {
		this.typeDesc = typeDesc;
	}

}