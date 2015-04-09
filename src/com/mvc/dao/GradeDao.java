package com.mvc.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.mvc.model.Grade;
import com.core.*;

@Repository("gradeDao")
public class GradeDao extends BaseDao<Grade>{
	@Resource
	private HibernateTemplate hibernateTemplate;

	public void add(Grade g) {
		hibernateTemplate.save(g);
	}

	public boolean findGrade(Grade g) {
		List<?> list = hibernateTemplate.find("from Grade g where g.grade_name=?",
				g.getGrade_name());
		if (list.size() > 0) {
			return true;
		}
		return false;
	}
	
	public List<Grade> gradeList() {
		List<?> list = hibernateTemplate.find("from Grade g ");
		List<Grade> grades=new ArrayList<Grade>();
		for(Object temp:list){
			grades.add((Grade)temp);
		}
		return grades;
	}
	
	public int gradeNum() {
		List<?> list = hibernateTemplate.find("from Grade grade ");
		int total = list.size();
		return total;
	}

}
