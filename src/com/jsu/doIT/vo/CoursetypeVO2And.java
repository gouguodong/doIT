package com.jsu.doIT.vo;

public class CoursetypeVO2And implements java.io.Serializable {

	private static final long serialVersionUID = -5757768453022461722L;

	private Integer typeId;
	private Integer fatherId;
	private String typeName;

	public CoursetypeVO2And() {
	}

	public CoursetypeVO2And(String typeName) {
		this.typeName = typeName;
	}

	public Integer getTypeId() {
		return typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public Integer getFatherId() {
		return fatherId;
	}

	public void setFatherId(Integer fatherId) {
		this.fatherId = fatherId;
	}

}