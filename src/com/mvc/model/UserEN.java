package com.mvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.*;

/*

 * */
@Entity
public class UserEN {
	private int id;
	private String user_id;
	private String birthYear;
	private String gender;
	private String speciality;
	private String gradeId;
	private String subject;
	private String isTheOne;
	private String maritalStatus;
	private String ethnicity;
	private String nationality;
	private String religiousBeliefs;
	private String study;
	private String homeAddress;
	private String parentalEducation;
	private String familyIncome;
	private String socialClass;
	private String parentsRelationship;
	private String email;
	private String permission;
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
	 * @return the speciality
	 */
	public String getSpeciality() {
		return speciality;
	}
	/**
	 * @param speciality the speciality to set
	 */
	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}
	/**
	 * @return the gradeId
	 */
	public String getGradeId() {
		return gradeId;
	}
	/**
	 * @param gradeId the gradeId to set
	 */
	public void setGradeId(String gradeId) {
		this.gradeId = gradeId;
	}
	/**
	 * @return the subject
	 */
	public String getSubject() {
		return subject;
	}
	/**
	 * @param subject the subject to set
	 */
	public void setSubject(String subject) {
		this.subject = subject;
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
	 * @return the ethnicity
	 */
	public String getEthnicity() {
		return ethnicity;
	}
	/**
	 * @param ethnicity the ethnicity to set
	 */
	public void setEthnicity(String ethnicity) {
		this.ethnicity = ethnicity;
	}
	/**
	 * @return the nationality
	 */
	public String getNationality() {
		return nationality;
	}
	/**
	 * @param nationality the nationality to set
	 */
	public void setNationality(String nationality) {
		this.nationality = nationality;
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
	 * @return the parentalEducation
	 */
	public String getParentalEducation() {
		return parentalEducation;
	}
	/**
	 * @param parentalEducation the parentalEducation to set
	 */
	public void setParentalEducation(String parentalEducation) {
		this.parentalEducation = parentalEducation;
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
	 * @return the socialClass
	 */
	public String getSocialClass() {
		return socialClass;
	}
	/**
	 * @param socialClass the socialClass to set
	 */
	public void setSocialClass(String socialClass) {
		this.socialClass = socialClass;
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
	public String getPermission() {
		return permission;
	}
	/**
	 * @param permission the permission to set
	 */
	public void setPermission(String permission) {
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
