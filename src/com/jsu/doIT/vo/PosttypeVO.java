package com.jsu.doIT.vo;

public class PosttypeVO implements java.io.Serializable {

	private static final long serialVersionUID = -1365974891088502457L;
	private Integer typeId;
	private String typeName;
	private String typeDesc;

	public PosttypeVO() {
	}

	public PosttypeVO(String typeName) {
		this.typeName = typeName;
	}

	public PosttypeVO(String typeName, String typeDesc) {
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