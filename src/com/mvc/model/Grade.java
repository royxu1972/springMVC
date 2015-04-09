package com.mvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Grade {
	private int id;
	private String grade_id;
	private String grade_name;
	@Id
	@GeneratedValue
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the grade_id
	 */
	public String getGrade_id() {
		return grade_id;
	}
	/**
	 * @param grade_id the grade_id to set
	 */
	public void setGrade_id(String grade_id) {
		this.grade_id = grade_id;
	}
	/**
	 * @return the grade_name
	 */
	public String getGrade_name() {
		return grade_name;
	}
	/**
	 * @param grade_name the grade_name to set
	 */
	public void setGrade_name(String grade_name) {
		this.grade_name = grade_name;
	}
}