package com.jsu.doIT.vo;

public class RelationtypeVO implements java.io.Serializable {

	private static final long serialVersionUID = -564799659893654924L;

	private Integer typeId;
	private String typeName;

	public RelationtypeVO() {
	}

	public RelationtypeVO(String typeName) {
		this.typeName = typeName;
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

}