package com.mvc.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mvc.service.SpecialityService;

import org.springframework.web.servlet.ModelAndView;


@Controller("specialityController")
@RequestMapping("/speciality")
public class SpecialityController {

	@Resource
	private SpecialityService specialityService;

	@RequestMapping(method = RequestMethod.POST, value = "/list")
	public ModelAndView jsload(String school_id) {
		System.out.println("school_id:"+school_id);
		ModelAndView mav = new ModelAndView();
		try {
				mav.setViewName("log_success");
				//Map<String, Object> map = new HashMap<String, Object>();
			    // map.put("user", userService.login(user));
		         mav.addObject("total", specialityService.specialityCount());
		         mav.addObject("rows",specialityService.listBySchoolid(school_id));
		     	 mav.addObject("success", true);
		         mav.setViewName("jsonView");
		       }
		catch (Exception e) {
				mav.addObject("success", false);
		}
		return mav;
	}
}
