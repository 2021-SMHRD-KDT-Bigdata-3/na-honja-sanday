package com.smhrd.nahonsan;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smhrd.mapper.guardianVO;
import com.smhrd.mapper.nahonsanMapper;
import com.smhrd.mapper.testVO;

@Controller
public class nahonsanController {


   private static final Logger logger = LoggerFactory.getLogger(nahonsanController.class);
   
   @Autowired
   nahonsanMapper naMapper;
 
   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String home(Locale locale, Model model) {
      logger.info("Welcome home! The client locale is {}.", locale);
      
      Date date = new Date();
      DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
      
      String formattedDate = dateFormat.format(date);
      
      model.addAttribute("serverTime", formattedDate );
      
      return "Home";
   }
   
   // 만들어지지 않은 페이지
   @RequestMapping("/firstpage")
	public String first() {
	   return "firstpage";
   }

	
   @RequestMapping("/login.do") // 로그인페이지에 바로 들어가려고 만들어논 임시 맵핑
   public String login() {
	   return "login";
   }
   
	/*// 진짜로 쓸예정인 매핑
	 * @RequestMapping(value = "/login.do") public String login(guardianVO guardian)
	 * { guardianVO guard = naMapper.login(guardian);
	 * 
	 * if(guard == null) { return "login"; }else { return "main_guard"; } }
	 */
  
   @RequestMapping(value = "/About.do")
   public String about() {
      return "about";
   }
   
   @RequestMapping(value = "/join.do")
   public String join() {
      return "join";
   }
   @RequestMapping(value = "/apply.do")
   public String apply() {
      return "blog";
   }
   @RequestMapping(value = "/apply_complete.do")
   public String apply_complete() {
      return "contract";
   }
   @RequestMapping(value = "/apply_status.do")
   public String apply_status() {
      return "blog-single";
   }
   @RequestMapping(value = "/main_guard.do")
   public String main_guard() {
      return "counselor";
   }
   @RequestMapping(value = "/main_senior.do")
   public String main_senior() {
      return "pricing";
   }
   @RequestMapping(value = "/senior_msg.do")
   public String senior_msg() {
      return "services";
   }
   
   @RequestMapping(value = "/main.do")
   public String main() {
      return "main";
   }
   
   @RequestMapping(value = "/index.do")
   public String index() {
      return "index";
   }
	/*
	 * jsp가 만들어지지 않은 페이지
	 *
	 * @RequestMapping("/senior_friend.do") 
	 * public String seniorfriend() { 
	 * return "senior_friend"; 
	 * }
	 * 
	 * @RequestMapping("/wel_manage.do") 
	 * public String manage() { 
	 * return "wel_manage"; 
	 * }
	 * 
	 * @RequestMapping("/danger.do") 
	 * public String danger() {
	 * return "danger"; 
	 * }
	 * 
	 */
   
   
   /* 새로만듬*/
   @RequestMapping(value = "/about2.do")
   public String about2() {
      return "about2";
   }
   @RequestMapping(value = "/about3.do")
   public String about3() {
      return "about3";
   }
   @RequestMapping(value = "/status.do")
   public String status() {
      return "status";
   }

}