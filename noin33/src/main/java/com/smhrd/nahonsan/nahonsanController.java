package com.smhrd.nahonsan;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
   
   @RequestMapping("/logout.do")
   public String logout(HttpServletRequest request) {
	  HttpSession session = request.getSession();
	  session.invalidate();
      return "firstpage";
   }

   @RequestMapping("/gologin.do") // 로그인페이지에 바로 들어가려고 만들어논 임시 맵핑
   public String login() {
      return "login";
   }
   

   @RequestMapping(value = "/login.do") 
   public String login(memberVO vo, HttpServletRequest request){
	   HttpSession session = request.getSession();
	   memberVO vore = naMapper.login(vo);
//	   System.out.println(vore.getId());
	   
	   if(vore == null) { 
    	  System.out.println("실패");
         return "login"; 
       }else {
    	   if(vore.seperator == "1") {
    		   System.out.println("seperator가 1일때 :" + vore.getId());
    		   session.setAttribute("noin", vore);
    		   return "noin_main";
    	   }else {
    	 	   System.out.println("seperator가 1이 아닐때 :" +vore.getId());
    		   session.setAttribute("vore", vore);
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
      return "redirect:/help_success.do";
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
   
   /* 새로만듬*/
	@RequestMapping(value = "/about2.do")
	public String about2(){
		return "about2";
	}
	@RequestMapping(value = "/delnoin.do")
	public String delnoin(int idx) {
		naMapper.delnoin(idx);
		return "redirect:/about3.do";
	}
	//애 지우면 status modal 창 안뜸.
	@RequestMapping(value = "/noinselect.do")
	public String noinselect() {
		return "status";
	}
	//노인이 신청했는지 알아보고 조회 후 arraylist에 담아 res 라는 이름으로 ajax에 송출.
	@RequestMapping(value = "/checkStatus.do")
	public @ResponseBody List<requestVO> noinselect(requestVO vo){
		
		List<requestVO> res =  naMapper.noinselect(vo);
		
		return res;
	}
	@RequestMapping(value = "/noinrequest.do")
	   public String noinrequest(requestVO vo) {
	     naMapper.addnoin(vo);
	      return "redirect:/help_success.do";
	   }
   @RequestMapping(value = "/about3.do") //관리목록
   public String about3(HttpServletRequest request) {
	   List<seniorVO> list1 = naMapper.showlist();
	   request.setAttribute("list", list1);
      return "about3";
   }
 //노인이 신청했는지 조회 후 알아보는 페이지
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
 //신청을 안했다면 노인이 신청하는 시스템.
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
   
   @RequestMapping("/idCheck.do")
   public @ResponseBody boolean idCheck(memberVO vo) {
	   memberVO result = naMapper.idCheck(vo);
	   
	   if(result == null) {
		   return false;
	   }else {
		   return true;
	   }
   }
   
   
}