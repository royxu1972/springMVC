package com.mvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Quiz {
	private int id;
	private String user_id;

	private int W_P_1;
	private int W_P_2;
	private int W_P_3;
	private int W_P_4;
	private int W_P_5;
	private int W_P_6;
	private int W_C_1;
	private int W_C_2;
	private int W_C_3;
	private int W_C_4;
	private int W_C_5;
	private int W_C_6;
	private int D_P_1;
	private int D_P_2;
	private int D_P_3;
	private int D_P_4;
	private int D_P_5;
	private int D_P_6;
	private int D_C_1;
	private int D_C_2;
	private int D_C_3;
	private int D_C_4;
	private int D_C_5;
	private int D_C_6;
	private int D_DEC;
	private int W_DEC;
	private int difficulty;
	private int time;
	private String T29_1;
	private String T29_2;
	private String T30_1;
	private String T30_2;
	
	
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
	 * @return the w_DEC
	 */
	public int getW_DEC() {
		return W_DEC;
	}
	/**
	 * @param w_DEC the w_DEC to set
	 */
	public void setW_DEC(int w_DEC) {
		W_DEC = w_DEC;
	}
	/**
	 * @return the w_P_1
	 */
	public int getW_P_1() {
		return W_P_1;
	}
	/**
	 * @param w_P_1 the w_P_1 to set
	 */
	public void setW_P_1(int w_P_1) {
		W_P_1 = w_P_1;
	}
	/**
	 * @return the w_P_4
	 */
	public int getW_P_4() {
		return W_P_4;
	}
	/**
	 * @param w_P_4 the w_P_4 to set
	 */
	public void setW_P_4(int w_P_4) {
		W_P_4 = w_P_4;
	}
	/**
	 * @return the w_P_3
	 */
	public int getW_P_3() {
		return W_P_3;
	}
	/**
	 * @param w_P_3 the w_P_3 to set
	 */
	public void setW_P_3(int w_P_3) {
		W_P_3 = w_P_3;
	}
	/**
	 * @return the w_P_6
	 */
	public int getW_P_6() {
		return W_P_6;
	}
	/**
	 * @param w_P_6 the w_P_6 to set
	 */
	public void setW_P_6(int w_P_6) {
		W_P_6 = w_P_6;
	}
	/**
	 * @return the w_P_2
	 */
	public int getW_P_2() {
		return W_P_2;
	}
	/**
	 * @param w_P_2 the w_P_2 to set
	 */
	public void setW_P_2(int w_P_2) {
		W_P_2 = w_P_2;
	}
	/**
	 * @return the w_P_5
	 */
	public int getW_P_5() {
		return W_P_5;
	}
	/**
	 * @param w_P_5 the w_P_5 to set
	 */
	public void setW_P_5(int w_P_5) {
		W_P_5 = w_P_5;
	}
	/**
	 * @return the w_C_4
	 */
	public int getW_C_4() {
		return W_C_4;
	}
	/**
	 * @param w_C_4 the w_C_4 to set
	 */
	public void setW_C_4(int w_C_4) {
		W_C_4 = w_C_4;
	}
	/**
	 * @return the w_C_6
	 */
	public int getW_C_6() {
		return W_C_6;
	}
	/**
	 * @param w_C_6 the w_C_6 to set
	 */
	public void setW_C_6(int w_C_6) {
		W_C_6 = w_C_6;
	}
	/**
	 * @return the w_C_2
	 */
	public int getW_C_2() {
		return W_C_2;
	}
	/**
	 * @param w_C_2 the w_C_2 to set
	 */
	public void setW_C_2(int w_C_2) {
		W_C_2 = w_C_2;
	}
	/**
	 * @return the w_C_5
	 */
	public int getW_C_5() {
		return W_C_5;
	}
	/**
	 * @param w_C_5 the w_C_5 to set
	 */
	public void setW_C_5(int w_C_5) {
		W_C_5 = w_C_5;
	}
	/**
	 * @return the w_C_3
	 */
	public int getW_C_3() {
		return W_C_3;
	}
	/**
	 * @param w_C_3 the w_C_3 to set
	 */
	public void setW_C_3(int w_C_3) {
		W_C_3 = w_C_3;
	}
	/**
	 * @return the w_C_1
	 */
	public int getW_C_1() {
		return W_C_1;
	}
	/**
	 * @param w_C_1 the w_C_1 to set
	 */
	public void setW_C_1(int w_C_1) {
		W_C_1 = w_C_1;
	}
	/**
	 * @return the d_DEC
	 */
	public int getD_DEC() {
		return D_DEC;
	}
	/**
	 * @param d_DEC the d_DEC to set
	 */
	public void setD_DEC(int d_DEC) {
		D_DEC = d_DEC;
	}
	/**
	 * @return the d_P_6
	 */
	public int getD_P_6() {
		return D_P_6;
	}
	/**
	 * @param d_P_6 the d_P_6 to set
	 */
	public void setD_P_6(int d_P_6) {
		D_P_6 = d_P_6;
	}
	/**
	 * @return the d_P_5
	 */
	public int getD_P_5() {
		return D_P_5;
	}
	/**
	 * @param d_P_5 the d_P_5 to set
	 */
	public void setD_P_5(int d_P_5) {
		D_P_5 = d_P_5;
	}
	/**
	 * @return the d_P_1
	 */
	public int getD_P_1() {
		return D_P_1;
	}
	/**
	 * @param d_P_1 the d_P_1 to set
	 */
	public void setD_P_1(int d_P_1) {
		D_P_1 = d_P_1;
	}
	/**
	 * @return the d_P_2
	 */
	public int getD_P_2() {
		return D_P_2;
	}
	/**
	 * @param d_P_2 the d_P_2 to set
	 */
	public void setD_P_2(int d_P_2) {
		D_P_2 = d_P_2;
	}
	/**
	 * @return the d_P_4
	 */
	public int getD_P_4() {
		return D_P_4;
	}
	/**
	 * @param d_P_4 the d_P_4 to set
	 */
	public void setD_P_4(int d_P_4) {
		D_P_4 = d_P_4;
	}
	/**
	 * @return the d_P_3
	 */
	public int getD_P_3() {
		return D_P_3;
	}
	/**
	 * @param d_P_3 the d_P_3 to set
	 */
	public void setD_P_3(int d_P_3) {
		D_P_3 = d_P_3;
	}
	/**
	 * @return the d_C_3
	 */
	public int getD_C_3() {
		return D_C_3;
	}
	/**
	 * @param d_C_3 the d_C_3 to set
	 */
	public void setD_C_3(int d_C_3) {
		D_C_3 = d_C_3;
	}
	/**
	 * @return the d_C_5
	 */
	public int getD_C_5() {
		return D_C_5;
	}
	/**
	 * @param d_C_5 the d_C_5 to set
	 */
	public void setD_C_5(int d_C_5) {
		D_C_5 = d_C_5;
	}
	/**
	 * @return the d_C_6
	 */
	public int getD_C_6() {
		return D_C_6;
	}
	/**
	 * @param d_C_6 the d_C_6 to set
	 */
	public void setD_C_6(int d_C_6) {
		D_C_6 = d_C_6;
	}
	/**
	 * @return the d_C_1
	 */
	public int getD_C_1() {
		return D_C_1;
	}
	/**
	 * @param d_C_1 the d_C_1 to set
	 */
	public void setD_C_1(int d_C_1) {
		D_C_1 = d_C_1;
	}
	/**
	 * @return the d_C_2
	 */
	public int getD_C_2() {
		return D_C_2;
	}
	/**
	 * @param d_C_2 the d_C_2 to set
	 */
	public void setD_C_2(int d_C_2) {
		D_C_2 = d_C_2;
	}
	/**
	 * @return the d_C_4
	 */
	public int getD_C_4() {
		return D_C_4;
	}
	/**
	 * @param d_C_4 the d_C_4 to set
	 */
	public void setD_C_4(int d_C_4) {
		D_C_4 = d_C_4;
	}
	/**
	 * @return the difficulty
	 */
	public int getDifficulty() {
		return difficulty;
	}
	/**
	 * @param difficulty the difficulty to set
	 */
	public void setDifficulty(int difficulty) {
		this.difficulty = difficulty;
	}
	/**
	 * @return the time
	 */
	public int getTime() {
		return time;
	}
	/**
	 * @param time the time to set
	 */
	public void setTime(int time) {
		this.time = time;
	}
	
	public String getT29_1() {
		return T29_1;
	}
	public void setT29_1(String t29_1) {
		T29_1 = t29_1;
	}
	public String getT29_2() {
		return T29_2;
	}
	public void setT29_2(String t29_2) {
		T29_2 = t29_2;
	}
	public String getT30_1() {
		return T30_1;
	}
	public void setT30_1(String t30_1) {
		T30_1 = t30_1;
	}
	public String getT30_2() {
		return T30_2;
	}
	public void setT30_2(String t30_2) {
		T30_2 = t30_2;
	}
}
