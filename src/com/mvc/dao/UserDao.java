package com.mvc.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.mvc.model.User;
import com.core.*;

@Repository("userDao")
public class UserDao extends BaseDao<User>{
	@Resource
	private HibernateTemplate hibernateTemplate;

	public void add(User u) {
		hibernateTemplate.save(u);
	}

	public boolean findUser(User u) {
		List<?> list = hibernateTemplate.find("from User u where u.email=?",
				u.getEmail());
		if (list.size() > 0) {
			return true;
		}
		return false;
	}

	public boolean findUserByEmail(String email) {
		List<?> list = hibernateTemplate.find("from User u where u.email=?",
				email);
		if (list.size() > 0) {
			return true;
		}
		return false;
	}
	
	public User userLog(User u) {//only admin can log
		List<?> list = hibernateTemplate.find(
				"from User u where u.permission=1 and u.user_id=? and u.email=?", u.getUser_id(),
				u.getEmail());
		if (list.size() > 0) {
			return (User)list.get(0);
		}
		return null;
	}
	
	public List<User> userList() {
		List<?> list = hibernateTemplate.find("from User u ");
		List<User> users=new ArrayList<User>();
		for(Object temp:list){
			users.add((User)temp);
		}
		return users;
	}
	
	public List<User> userList_en() {
		List<?> list = hibernateTemplate.find("from UserEN u ");
		List<User> users=new ArrayList<User>();
		for(Object temp:list){
			users.add((User)temp);
		}
		return users;
	}
	
	public int userNum() {
		List<?> list = hibernateTemplate.find("from User u ");
		int total = list.size();
		return total;
	}
}
