package com.mvc.service;

import javax.annotation.Resource;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.mvc.dao.UserDao;
import com.mvc.model.User;
import com.util.*;

@Service("userService")
public class UserService {
	@Resource
	private UserDao userDao;

	/**
	 * 
	 * @param user
	 */
	public void add(User user) {
		//中文user_id由 CN+ 用户学校id + 用户年纪id + 用户数目组成
//		user.setUser_id("CN"+user.getSchool().getId()+user.getGrade().getId()+this.userCount()); 
		user.setUser_id("CN"+StringUtil.generateUserId());
		String gender=user.getGender().toUpperCase();
		user.setGender(gender);
		user.setCaptcha(user.getUser_id());
		userDao.add(user);
	}

	public boolean exist(User user) {
		return userDao.findUser(user);
	}

	public boolean existEmail(String email) {
		// TODO Auto-generated method stub
		return userDao.findUserByEmail(email);
	} 
	
	public List<User> list() {
		return userDao.userList();
	}
	
	public List<User> list_en() {
		return userDao.userList_en();
	}
	
	public User log(User user) {
		return userDao.userLog(user);
	}
	
	public int userCount() {
		return userDao.userNum();
	}
	

	public void deleteAll(List<User> users) throws DataAccessException {
		this.userDao.deleteAll(users);
	}
}
