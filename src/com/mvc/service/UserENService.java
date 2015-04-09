package com.mvc.service;

import javax.annotation.Resource;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;


import com.mvc.dao.UserENDao;
import com.mvc.model.UserEN;

import com.util.*;

@Service("userENService")
public class UserENService {
	@Resource
	private UserENDao userENDao;

	/***
	 * 添加用户 
//	 * 用户user_id由：用户类型(中外)、用户ID组成
	 */
	public void add(UserEN userEN) {
//		userEN.setUser_id("EN"+this.userENCount()); 
		userEN.setUser_id("EN"+StringUtil.generateUserId());
		
		String gender=userEN.getGender().toUpperCase();
		userEN.setGender(gender);
		userEN.setCaptcha(userEN.getUser_id());
		userENDao.add(userEN);
	}
	
	public boolean exist(UserEN userEN) {
		return userENDao.findUser(userEN);
	}

	public boolean existEmail(String email) {
		// TODO Auto-generated method stub
		return userENDao.findUserByEmail(email);
	} 
	
	public List<UserEN> list() {
		return userENDao.userList();
	}
	
	public UserEN log(UserEN userEN) {
		return userENDao.userLog(userEN);
	}
	
	public int userENCount() {
		return userENDao.userNum();
	}
	
	public void deleteAll(List<UserEN> users) throws DataAccessException {
		this.userENDao.deleteAll(users);
	}
}
