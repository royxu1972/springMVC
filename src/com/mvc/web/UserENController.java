package com.mvc.web;

import javax.annotation.Resource;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mvc.model.UserEN;
import com.mvc.service.UserENService;

import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

@Controller("UserENController")
@RequestMapping("/userEN")
public class UserENController {

	@Resource
	private UserENService userENService;

	
	@RequestMapping(params = "method=reg")
	public ModelAndView reg(UserEN userEN) {
		System.out.println("英文用户注册 ");
		ModelAndView mav = new ModelAndView();
		if (userENService.exist(userEN)) {
			mav.setViewName("reg_fail");
			//return mav;
		}
		else{
		userENService.add(userEN);
		//try {
			//this.sendEmail(userEN);
		//} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		//}
		//mav.setViewName("reg_success");
		 Map<String, Object> map = new HashMap<String, Object>();
	     map.put("userEN", userEN);
	     mav.addObject(map);
	     mav.setViewName("redirect:quiz_en.jsp?user_id="+userEN.getUser_id());
		}
		 return mav;
	}

	@RequestMapping(params = "method=log")
	public ModelAndView log(UserEN userEN) {
		System.out.println("用户登录");
		ModelAndView mav = new ModelAndView("log_fail");
		if (userENService.log(userEN)!=null) {
			Map<String, Object> map = new HashMap<String, Object>();
		     map.put("userEN", userENService.log(userEN));
		     mav.setViewName("redirect:jsp/admin/manager.htm");
		     return mav;
		}
			return mav;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/list")
	public ModelAndView jslog() {
		ModelAndView mav = new ModelAndView();
		try {
				mav.setViewName("log_success");
				System.out.println("list");
				//Map<String, Object> map = new HashMap<String, Object>();
			    // map.put("userEN", userENService.login(userEN));
		         mav.addObject("total", userENService.userENCount());
		         mav.addObject("rows",userENService.list());
		     	 mav.addObject("success", true);
		         mav.setViewName("jsonView");
		       }
		catch (Exception e) {
				mav.addObject("success", false);
		}
		return mav;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/existEmail")
	public ModelAndView existEmail(String email) {
		ModelAndView mav = new ModelAndView();
		try {
			mav.setViewName("existEmail");
			System.out.println("existEmail:" + userENService.existEmail(email));
			mav.addObject("exist", userENService.existEmail(email));
			mav.addObject("success", true);
			mav.setViewName("jsonView");
		} catch (Exception e) {
			mav.addObject("success", false);
		}
		return mav;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/js_existEmail")
	@ResponseBody
	public String jsexistEmail(String email) {
		try {
			System.out.println("js_existEmail:" + userENService.existEmail(email));
			if (userENService.existEmail(email)) {
				return "false";
			} else {
				return "true";
			}
		} catch (Exception e) {
			return "false";
		}
	}
	@RequestMapping(method=RequestMethod.DELETE, value="/delUsers")
    public ModelAndView deleteUser(String[] ids) {
    	System.out.println("用户删除");
        ModelAndView mav = new ModelAndView("jsonView");
        try {
            List<UserEN> UserENs = new ArrayList<UserEN>();
            for (String id : ids) {
                UserEN UserEN = new UserEN();
                UserEN.setId(Integer.parseInt(id));
                UserENs.add(UserEN);
            }
            this.userENService.deleteAll(UserENs);
            mav.addObject("success", true);
        } catch (Exception e) {
            mav.addObject("msg", e.getMessage());
            mav.addObject("success", false);
        }
        return mav;
    }
	
	public void sendEmail(UserEN userEN) throws Exception
	{
		String validateUrl = "http://localhost:8080/springMVC/";
		String msgText ="<p style='margin-left:30px'>"
						 + "<span style='color:#6495ED;font-size:16px;'>"+userEN.getBirthYear() + "</span>同学您好:"
						+ "</p>"
						
						+"<p style='margin-left:30px'>"
						  + "你 在问卷调查中使用邮箱<span style='font-size:16px;'>"+ userEN.getBirthYear() +"</span>， 因此我们发送这封邮件进行确认。<br/><br/>"
						  +"你的验证码是: "  
						  + "<span style='font-size:16px; color:#ff0000; font-weight: bold; font-family:Arial, Helvetica, sans-serif'>"+userEN.getCaptcha()+"</span> "
						+ "</p>"

						+"<br><div style='font-size:12px; margin-left:30px; color:#555555'>"
						  + "此信是由问卷信息收集系统发出，系统不接受回信，请勿直接回复。<br>"
						  + "如有任何疑问，请联系我们<a href='http://www.baidu.com' target='_blank'>www.baidu.com</a>。"
						+ "</div>"
						+ "<p style='margin-left:250px'>江苏微软晓庄技术中心--南京晓庄数学与信息技术学院<br>"
					    	+ "<a href='http://www.baidu.com' target='_blank'>www.baidu.com</a>"
						+ "</p>"
						;
		// 获取系统属性
		Properties p = System.getProperties();
		// 设置邮件服务器:看看当地是否有邮局
		p.put("mail.smtp.host", "smtp.163.com");
		p.put("mail.smtp.auth", "true");
		
		// 创建一个邮件会话，准备发送邮件：买信封
		Session s = Session.getDefaultInstance(p, null);
//				 准备一个发送邮件的对象，即邮差
		Transport trans = s.getTransport("smtp");
		// 准备一封邮件：买信纸
		Message m = new MimeMessage(s);
//				 设置邮件的标题，即主题
		m.setSubject("问卷调查用户信息:"+userEN.getBirthYear()+"同学");
		// 设置日期
		m.setSentDate(new Date());
		// 邮件正文
		m.setContent(msgText,   "text/html;  charset=gb2312");//用于发邮件   设置邮件的标题，即主题
		// 设置发件人:写自己的地址和名字
		Address from = new InternetAddress("quizadmin@163.com");
		m.setFrom(from);
		// 设置收件人：写对方的地址和名字
		Address to = new InternetAddress(userEN.getEmail());
		// 将收件人加到邮件中:将收件人写到信纸上
		m.addRecipient(Message.RecipientType.TO, to);
		// 连接服务器认证
		trans.connect("smtp.163.com", "quizadmin", "654321quizadmin");
		//发送邮件，即投递
		trans.sendMessage(m, m.getAllRecipients());
		System.out.println(msgText+"\n"+userEN.getEmail());
	}
}
