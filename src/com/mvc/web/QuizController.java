package com.mvc.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mvc.model.Quiz;
import com.mvc.service.QuizService;

import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.*;
import java.util.Map;

@Controller("quizController")
@RequestMapping("/quiz")
public class QuizController {

	@Resource
	private QuizService quizService;

	@RequestMapping(params = "method=submitquiz")
	public ModelAndView submitquiz(Quiz quiz) {
		System.out.println("问卷提交");
		ModelAndView mav = new ModelAndView();
		if (quizService.exist(quiz)) {
			mav.setViewName("submitquiz_fail");
			//return mav;
		}
		else{
		quizService.add(quiz);
		mav.setViewName("submitquiz_success");
		 Map<String, Object> map = new HashMap<String, Object>();
	     map.put("quiz", quiz);
	     mav.addObject(map);
		}
		 return mav;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/list_cn")
	public ModelAndView list_cn() {
		ModelAndView mav = new ModelAndView();
		try {
				mav.setViewName("log_success");
				System.out.println("quizlist_CN");
				//Map<String, Object> map = new HashMap<String, Object>();
			    // map.put("user", userService.login(user));
		         mav.addObject("total", quizService.quizCount("CN"));
		         mav.addObject("rows",quizService.list("CN"));
		     	 mav.addObject("success", true);
		         mav.setViewName("jsonView");
		       }
		catch (Exception e) {
				mav.addObject("success", false);
		}
		return mav;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/list_en")
	public ModelAndView list_en() {
		ModelAndView mav = new ModelAndView();
		try {
				mav.setViewName("log_success");
				System.out.println("quizlist_EN");
				//Map<String, Object> map = new HashMap<String, Object>();
			    // map.put("user", userService.login(user));
		         mav.addObject("total", quizService.quizCount("EN"));
		         mav.addObject("rows",quizService.list("EN"));
		     	 mav.addObject("success", true);
		         mav.setViewName("jsonView");
		       }
		catch (Exception e) {
				mav.addObject("success", false);
		}
		return mav;
	}
	
	
    @RequestMapping(method=RequestMethod.DELETE, value="/delQuizs")
    public ModelAndView deleteUser(String[] ids) {
    	System.out.println("选择数据删除");
        ModelAndView mav = new ModelAndView("jsonView");
        try {
            List<Quiz> quizs = new ArrayList<Quiz>();
            for (String id : ids) {
            	Quiz quiz = new Quiz();
            	quiz.setId(Integer.parseInt(id));
                quizs.add(quiz);
            }
            this.quizService.deleteAll(quizs);
            mav.addObject("success", true);
        } catch (Exception e) {
            mav.addObject("msg", e.getMessage());
            mav.addObject("success", false);
        }
        return mav;
    }
    
	@RequestMapping(method = RequestMethod.POST, value = "/count_cn")
	public ModelAndView CScore_cn() {
		System.out.println("数据统计");
		ModelAndView mav = new ModelAndView();
		//mav.setViewName("Score.jsp");
		mav.addObject("total", quizService.quizCount("CN"));
    	mav.addObject("rows", quizService.CScore("CN"));
    	 mav.addObject("success", true);
		 mav.setViewName("jsonView");
		
		return mav;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/count_en")
	public ModelAndView CScore_en() {
		System.out.println("数据统计");
		ModelAndView mav = new ModelAndView();
		//mav.setViewName("Score.jsp");
		mav.addObject("total", quizService.quizCount("EN"));
    	mav.addObject("rows", quizService.CScore("EN"));
    	 mav.addObject("success", true);
		 mav.setViewName("jsonView");
		
		return mav;
	}
	
}
