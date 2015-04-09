package com.mvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.*;

/*

 * */
@Entity
public class User {
	private int id;
	private String user_id;
	private String surname;
	private String gender;
	private String birthYear;
	private String phoneNumber;
	private String isTheOne;
	private String homeAddress;
	private School school;
	private Speciality speciality;
	private Grade grade;
	private String study;
	private String politicalPosition;
	private String religiousBeliefs;
	private String maritalStatus;
	private String parentsEducation;
	private String parentsWork;
	private String familyIncome;
	private String parentsRelationship;
	private String email;
	private int permission;
	private String captcha;
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
	 * @return the user_id
	 */
	public String getUser_id() {
		return user_id;
	}
	/**
	 * @param user_id the user_id to set
	 */
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	/**
	 * @return the surname
	 */
	public String getSurname() {
		return surname;
	}
	/**
	 * @param surname the surname to set
	 */
	public void setSurname(String surname) {
		this.surname = surname;
	}
	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}
	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}
	/**
	 * @return the birthYear
	 */
	public String getBirthYear() {
		return birthYear;
	}
	/**
	 * @param birthYear the birthYear to set
	 */
	public void setBirthYear(String birthYear) {
		this.birthYear = birthYear;
	}
	/**
	 * @return the phoneNumber
	 */
	public String getPhoneNumber() {
		return phoneNumber;
	}
	/**
	 * @param phoneNumber the phoneNumber to set
	 */
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	/**
	 * @return the isTheOne
	 */
	public String getIsTheOne() {
		return isTheOne;
	}
	/**
	 * @param isTheOne the isTheOne to set
	 */
	public void setIsTheOne(String isTheOne) {
		this.isTheOne = isTheOne;
	}
	/**
	 * @return the homeAddress
	 */
	public String getHomeAddress() {
		return homeAddress;
	}
	/**
	 * @param homeAddress the homeAddress to set
	 */
	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}
	/**
	 * @return the school
	 */
	@ManyToOne
	@JoinColumn(name="school_id")
	public School getSchool() {
		return school;
	}
	/**
	 * @param school the school to set
	 */
	public void setSchool(School school) {
		this.school = school;
	}
	/**
	 * @return the speciality
	 */
	@ManyToOne
	@JoinColumn(name="speciality_id")
	public Speciality getSpeciality() {
		return speciality;
	}
	/**
	 * @param speciality the speciality to set
	 */
	public void setSpeciality(Speciality speciality) {
		this.speciality = speciality;
	}
	/**
	 * @return the grade
	 */
	@ManyToOne
	@JoinColumn(name="grade_id")
	public Grade getGrade() {
		return grade;
	}
	/**
	 * @param grade the grade to set
	 */
	public void setGrade(Grade grade) {
		this.grade = grade;
	}
	/**
	 * @return the study
	 */
	public String getStudy() {
		return study;
	}
	/**
	 * @param study the study to set
	 */
	public void setStudy(String study) {
		this.study = study;
	}
	/**
	 * @return the politicalPosition
	 */
	public String getPoliticalPosition() {
		return politicalPosition;
	}
	/**
	 * @param politicalPosition the politicalPosition to set
	 */
	public void setPoliticalPosition(String politicalPosition) {
		this.politicalPosition = politicalPosition;
	}
	/**
	 * @return the religiousBeliefs
	 */
	public String getReligiousBeliefs() {
		return religiousBeliefs;
	}
	/**
	 * @param religiousBeliefs the religiousBeliefs to set
	 */
	public void setReligiousBeliefs(String religiousBeliefs) {
		this.religiousBeliefs = religiousBeliefs;
	}
	/**
	 * @return the maritalStatus
	 */
	public String getMaritalStatus() {
		return maritalStatus;
	}
	/**
	 * @param maritalStatus the maritalStatus to set
	 */
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	/**
	 * @return the parentsEducation
	 */
	public String getParentsEducation() {
		return parentsEducation;
	}
	/**
	 * @param parentsEducation the parentsEducation to set
	 */
	public void setParentsEducation(String parentsEducation) {
		this.parentsEducation = parentsEducation;
	}
	/**
	 * @return the parentsWork
	 */
	public String getParentsWork() {
		return parentsWork;
	}
	/**
	 * @param parentsWork the parentsWork to set
	 */
	public void setParentsWork(String parentsWork) {
		this.parentsWork = parentsWork;
	}
	/**
	 * @return the familyIncome
	 */
	public String getFamilyIncome() {
		return familyIncome;
	}
	/**
	 * @param familyIncome the familyIncome to set
	 */
	public void setFamilyIncome(String familyIncome) {
		this.familyIncome = familyIncome;
	}
	/**
	 * @return the parentsRelationship
	 */
	public String getParentsRelationship() {
		return parentsRelationship;
	}
	/**
	 * @param parentsRelationship the parentsRelationship to set
	 */
	public void setParentsRelationship(String parentsRelationship) {
		this.parentsRelationship = parentsRelationship;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the permission
	 */
	public int getPermission() {
		return permission;
	}
	/**
	 * @param permission the permission to set
	 */
	public void setPermission(int permission) {
		this.permission = permission;
	}
	/**
	 * @return the captcha
	 */
	public String getCaptcha() {
		return captcha;
	}
	/**
	 * @param captcha the captcha to set
	 */
	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}
}
