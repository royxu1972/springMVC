package com.mvc.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.mvc.model.Quiz;
import com.mvc.model.User;
import com.core.*;

@Repository("quizDao")
public class QuizDao extends BaseDao<Quiz>{
	@Resource
	private HibernateTemplate hibernateTemplate;

	public void add(Quiz q) {
		hibernateTemplate.save(q);
	}

	public boolean findQuiz(Quiz q) {
		List<?> list = hibernateTemplate.find("from Quiz q where q.user_id=?",
				q.getUser_id());
		if (list.size() > 0) {
			return true;
		}
		return false;
	}
	
	public int quizNum(String userType) {
		List<?> list = hibernateTemplate.find("from Quiz q where q.user_id like ?","%"+userType+"%");
		int total = list.size();
		return total;
	}
	
	public List<Quiz> quizList(String userType) {
		List<?> list = hibernateTemplate.find("from Quiz q where q.user_id like ?","%"+userType+"%");
		List<Quiz> quizs=new ArrayList<Quiz>();
		for(Object temp:list){
			quizs.add((Quiz)temp);
		}
		return quizs;
	}

	public List<?> quizAvg() {
		List<?> list = hibernateTemplate.find("select " +
				"avg(q.w_P_1),avg(q.w_P_2),avg(q.w_P_3),avg(q.w_P_4),avg(q.w_P_5),avg(q.w_P_6)," +
				"avg(q.w_C_1),avg(q.w_C_2),avg(q.w_C_3),avg(q.w_C_4),avg(q.w_C_5),avg(q.w_C_6)," +
				"avg(q.d_P_1),avg(q.d_P_2),avg(q.d_P_3),avg(q.d_P_4),avg(q.d_P_5),avg(q.d_P_6)," +
				"avg(q.d_C_1),avg(q.d_C_2),avg(q.d_C_3),avg(q.d_C_4),avg(q.d_C_5),avg(q.d_C_6)," +
				"avg(q.w_DEC),avg(q.d_DEC) from Quiz q ");
		return list;
	}
}
