package com.mvc.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mvc.service.GradeService;

import org.springframework.web.servlet.ModelAndView;


@Controller("gradeController")
@RequestMapping("/grade")
public class GradeController {

	@Resource
	private GradeService gradeService;

	@RequestMapping(method = RequestMethod.POST, value = "/list")
	public ModelAndView jslog() {
		ModelAndView mav = new ModelAndView();
		try {
				mav.setViewName("log_success");
				//Map<String, Object> map = new HashMap<String, Object>();
			    // map.put("user", userService.login(user));
		         mav.addObject("total", gradeService.gradeCount());
		         mav.addObject("rows",gradeService.list());
		     	 mav.addObject("success", true);
		         mav.setViewName("jsonView");
		       }
		catch (Exception e) {
				mav.addObject("success", false);
		}
		return mav;
	}
}
