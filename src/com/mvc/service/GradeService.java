package com.mvc.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mvc.dao.GradeDao;
import com.mvc.model.Grade;

@Service("gradeService")
public class GradeService {
	@Resource
	private GradeDao gradeDao;

	public void add(Grade grade) {
		gradeDao.add(grade);
	}

	public boolean exist(Grade grade) {
		return gradeDao.findGrade(grade);
	}
	
	public int gradeCount() {
		return gradeDao.gradeNum();
	}

	public List<Grade> list() {
		return gradeDao.gradeList();
	}
}
