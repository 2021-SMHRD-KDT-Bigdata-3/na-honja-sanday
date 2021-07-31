package com.smhrd.web;

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


import com.smhrd.mapper.nahonsanMapper;
import com.smhrd.mapper.testVO;

@Controller
public class nahonsanController {

	@Autowired
	nahonsanMapper naMapper;
	
	
	@RequestMapping("/firstpage")
	public String first() {
		return "firstpage";
	}
	
	
	/*
	 * @RequestMapping("/loginTEST.do") public String loginTEST(testVO test) {
	 * testVO vo = naMapper.login(test);
	 * 
	 * if(vo==null) { System.out.println("로그인 실패"); return "logintest"; } else {
	 * return "loginsuccesstest"; }
	 * 
	 * }
	 */
	

   private static final Logger logger = LoggerFactory.getLogger(nahonsanController.class);
   
 
   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String home(Locale locale, Model model) {
      logger.info("Welcome home! The client locale is {}.", locale);
      
      Date date = new Date();
      DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
      
      String formattedDate = dateFormat.format(date);
      
      model.addAttribute("serverTime", formattedDate );
      
      return "Home";
   }
   @RequestMapping(value = "/index.do")
   public String home() {
      return "index";
   }
   @RequestMapping("/About.do")
   public String about() {
      return "about";
   }
   @RequestMapping(value = "/blog.do")
   public String Home() {
      return "blog";
   }
   @RequestMapping(value = "/contract.do")
   public String Contract() {
      return "contract";
   }
   @RequestMapping(value = "/blog-single.do")
   public String blog_single() {
      return "blog-single";
   }
   @RequestMapping(value = "/counselor.do")
   public String counselor() {
      return "counselor";
   }
   @RequestMapping(value = "/pricing.do")
   public String pricing() {
      return "pricing";
   }
   @RequestMapping(value = "/services.do")
   public String services() {
      return "services";
   }
}