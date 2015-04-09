package com.mvc.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.mvc.model.Speciality;
import com.core.*;

@Repository("specialityDao")
public class SpecialityDao extends BaseDao<Speciality>{
	@Resource
	private HibernateTemplate hibernateTemplate;

	public void add(Speciality s) {
		hibernateTemplate.save(s);
	}

	public boolean findSpeciality(Speciality s) {
		List<?> list = hibernateTemplate.find("from Speciality s where s.speciality_name=?",
				s.getSpeciality_name());
		if (list.size() > 0) {
			return true;
		}
		return false;
	}
	
	public List<Speciality> specialityList() {
		List<?> list = hibernateTemplate.find("from Speciality s ");
		List<Speciality> specialities=new ArrayList<Speciality>();
		for(Object temp:list){
			specialities.add((Speciality)temp);
		}
		return specialities;
	}
	
	public int specialityNum() {
		List<?> list = hibernateTemplate.find("from Speciality speciality ");
		int total = list.size();
		return total;
	}
	
	public List<Speciality> specialityListBySchoolid(String school_id) {
		List<?> list = hibernateTemplate.find("from Speciality s where s.school_id=?",
				school_id);
		List<Speciality> specialities=new ArrayList<Speciality>();
		for(Object temp:list){
			specialities.add((Speciality)temp);
		}
		return specialities;
	}

}
