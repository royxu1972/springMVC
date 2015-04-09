package com.mvc.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mvc.dao.SpecialityDao;
import com.mvc.model.Speciality;

@Service("specialityService")
public class SpecialityService {
	@Resource
	private SpecialityDao specialityDao;

	public void add(Speciality speciality) {
		specialityDao.add(speciality);
	}

	public boolean exist(Speciality speciality) {
		return specialityDao.findSpeciality(speciality);
	}
	
	public int specialityCount() {
		return specialityDao.specialityNum();
	}

	public List<Speciality> list() {
		return specialityDao.specialityList();
	}

	public List<Speciality> listBySchoolid(String school_id) {
		return specialityDao.specialityListBySchoolid(school_id);
	}
}
