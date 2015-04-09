package com.mvc.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.mvc.model.UserEN;
import com.core.*;

@Repository("userENDao")
public class UserENDao extends BaseDao<UserEN>{
	@Resource
	private HibernateTemplate hibernateTemplate;

	public void add(UserEN u) {
		hibernateTemplate.save(u);
	}

	public boolean findUser(UserEN u) {
		List<?> list = hibernateTemplate.find("from UserEN u where u.email=?",
				u.getEmail());
		if (list.size() > 0) {
			return true;
		}
		return false;
	}

	public boolean findUserByEmail(String email) {
		List<?> list = hibernateTemplate.find("from UserEN u where u.email=?",
				email);
		if (list.size() > 0) {
			return true;
		}
		return false;
	}
	
	public UserEN userLog(UserEN u) {//only admin can log
		List<?> list = hibernateTemplate.find(
				"from UserEN u where u.permission=1 and u.user_id=? and u.email=?", u.getUser_id(),
				u.getEmail());
		if (list.size() > 0) {
			return (UserEN)list.get(0);
		}
		return null;
	}
	
	public List<UserEN> userList() {
		List<?> list = hibernateTemplate.find("from UserEN u ");
		List<UserEN> users=new ArrayList<UserEN>();
		for(Object temp:list){
			users.add((UserEN)temp);
		}
		return users;
	}
	
	public int userNum() {
		List<?> list = hibernateTemplate.find("from UserEN u ");
		int total = list.size();
		return total;
	}
}
