package com.jsu.doIT.vo;

public class CoursetypeVO implements java.io.Serializable {

	private static final long serialVersionUID = -5757768453022461722L;

	private Integer typeId;
	private String typeName;
	private CoursetypeVO coursetypeVO;

	public CoursetypeVO() {
	}

	public CoursetypeVO(String typeName) {
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

	public CoursetypeVO getCoursetypeVO() {
		return coursetypeVO;
	}

	public void setCoursetypeVO(CoursetypeVO coursetypeVO) {
		this.coursetypeVO = coursetypeVO;
	}

}