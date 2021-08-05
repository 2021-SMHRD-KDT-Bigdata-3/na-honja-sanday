package com.smhrd.nahonsan;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smhrd.mapper.guardianVO;
import com.smhrd.mapper.loginVO;
import com.smhrd.mapper.memberVO;
import com.smhrd.mapper.nahonsanMapper;
import com.smhrd.mapper.welfare_workerVO;
import com.smhrd.mapper.requestVO;
import com.smhrd.mapper.seniorVO;

@Controller
public class nahonsanController {

   private static final Logger LOGGER = LoggerFactory.getLogger(nahonsanController.class);

   @Autowired
   nahonsanMapper naMapper;

   
   // 로그인 안했을때 맨처음 페이지
   @RequestMapping("/firstpage.do")
   public String first() {
      return "firstpage";
   }

   
   @RequestMapping("/gologin.do") // 로그인페이지에 바로 들어가려고 만들어논 임시 맵핑
   public String login() {
      return "login";
   }
   
   
   @RequestMapping(value = "/login.do") 
   public String login(memberVO vo){ 
      if(vo.id == "" || vo.password == "") { 
         return "login.do"; 
      }else {
    	  if(vo.seperator == "1") {
    		  return "noin_main";
    	  }else {
    		  return "main";
    	  }
      }
   }
      
  
   //신청 테이블 보여주기//
   @RequestMapping(value = "/manage.do")//관리등록
   public String about(HttpServletRequest request) {
      List<requestVO> list = naMapper.selectall();
      request.setAttribute("list", list);
       return "about";
   }
   
   //회원가입페이지 들어가기
   @RequestMapping(value = "/goJoin.do")
   public String join() {
      return "join";
   }
   
   //보호자 회원가입시 member와 guardian테이블에 담기
   @RequestMapping("/join_gardian.do")
   public String join(loginVO vo) {
	   naMapper.join2(vo);
	   return "firstpage";
   }
   
 //보호자 회원가입시 member와 welfare_worker테이블에 담기
   @RequestMapping("/join_welfare.do")
   public String join2( loginVO vo) {
	   naMapper.join(vo);
	   return "firstpage"; 
   }

   
   @RequestMapping("/blog.do")
   public String apply() {
      return "blog";
   }
   @RequestMapping("/blog-single.do")
   public String apply_complete() {
      return "blog-single";
   }
   @RequestMapping("/contract.do")
   public String apply_status() {
      return "contract";
   }
   @RequestMapping(value = "/noinsert.do")
   public String main_guard(requestVO vo) {
     naMapper.addnoin(vo);
      return "redirect:/About.do";
   }
   
   @RequestMapping("/realnoin.do")
   public String realnoin(int idx) {
	   naMapper.add_del(idx);
	   return "redirect:/about3.do";
   }
   
   @RequestMapping("/noin_main.do")
   public String main_senior() {
      return "noin_main";
   }
   @RequestMapping("/noin_help.do")
   public String senior_msg() {
      return "noin_help";
   }
   
   @RequestMapping(value = "/noin_friend.do")
   public String main(HttpServletRequest request) {
		 List<seniorVO> list1 = naMapper.showlist();
		request.setAttribute("list1", list1);
      return "noin_friend";
   }
   
   @RequestMapping(value = "/help_success.do")
   public String index() {
      return "help_success";
   }
   
   @RequestMapping(value = "/about2.do") //관리신청
   public String about2() {
      return "about2";
   }
  
   @RequestMapping(value = "/about3.do") //관리목록
   public String about3(HttpServletRequest request) {
	   List<seniorVO> list1 = naMapper.showlist();
	   request.setAttribute("list", list1);
      return "about3";
   }
   
   @RequestMapping(value = "/status.do")
   public String status() {
      return "status";
   }
  
   @RequestMapping("/counselor.do")//
   public String welfareList(Model model) {
	   List<welfare_workerVO> list = naMapper.counselor();	   
	   model.addAttribute("welfareList", list);
	   return "counselor";
   }
   
   @RequestMapping(value = "/sinchung.do")
   public String sinchung() {
      return "sinchung";
   }

   @RequestMapping("/main.do") // 복지사,보호자의 메인
   public String main() {
	   return "main";
   }
   
   @RequestMapping("/pricing.do")
   public String pricing() {
	   return "pricing";
   }
  
   @RequestMapping("/sevices.do")
   public String sevices() {
	   return "service";
   }
   
}