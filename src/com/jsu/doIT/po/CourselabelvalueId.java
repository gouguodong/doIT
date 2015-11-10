package com.jsu.doIT.po;

/**
 * CourselabelvalueId entity. @author MyEclipse Persistence Tools
 */

public class CourselabelvalueId implements java.io.Serializable {

	// Fields

	private Integer courseId;
	private Integer labelId;

	// Constructors

	/** default constructor */
	public CourselabelvalueId() {
	}

	/** full constructor */
	public CourselabelvalueId(Integer courseId, Integer labelId) {
		this.courseId = courseId;
		this.labelId = labelId;
	}

	// Property accessors

	public Integer getCourseId() {
		return this.courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public Integer getLabelId() {
		return this.labelId;
	}

	public void setLabelId(Integer labelId) {
		this.labelId = labelId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof CourselabelvalueId))
			return false;
		CourselabelvalueId castOther = (CourselabelvalueId) other;

		return ((this.getCourseId() == castOther.getCourseId()) || (this.getCourseId() != null && castOther.getCourseId() != null && this
				.getCourseId().equals(castOther.getCourseId())))
				&& ((this.getLabelId() == castOther.getLabelId()) || (this.getLabelId() != null && castOther.getLabelId() != null && this
						.getLabelId().equals(castOther.getLabelId())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getCourseId() == null ? 0 : this.getCourseId().hashCode());
		result = 37 * result + (getLabelId() == null ? 0 : this.getLabelId().hashCode());
		return result;
	}

}