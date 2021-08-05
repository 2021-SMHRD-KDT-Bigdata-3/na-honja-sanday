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

import com.smhrd.mapper.guardianVO;
import com.smhrd.mapper.loginVO;
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
   
   
   @RequestMapping("/login.do") 
   public String login(loginVO vo){ 
      if(vo.getEmail()==""  || vo.getPassword()=="") { 
         return "redirect:/login.do"; 
      }else if(vo.getSeperator() == "1"){
        
        naMapper.login(vo);
        return "main"; 
      }else {
         return "main";
      }
      }
   
  
 //신청 테이블 보여주기//
   @RequestMapping(value = "/About.do")
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

   //정태희
//   @RequestMapping("/join.do")
//   public String join(loginVO vo) { // loginVO = 사용자가 작성해서 받아온 값
//      if(vo.getSeperator()=="protect") {
//         naMapper.join(vo); //vo = db를 거친 값 (update, insert, delete는 void타입 ) 
//         naMapper.join2(vo2);   // select는 객체(vo, arrayList로 담아서 돌아온다)
//      }else {
//         naMapper.join(vo); //vo = db를 거친 값 (update, insert, delete는 void타입 ) 
//         naMapper.join2(vo2);   // select는 객체(vo, arrayList로 담아서 돌아온다)
//      }
//      return "main";
//   }
   
   @RequestMapping("/join_gardian.do")
   public String join(loginVO vo) {
	   naMapper.join(vo);
	   naMapper.join2(vo);
	   return "main";
   }
   
   @RequestMapping("/join_welfare.do")
   public String join2( loginVO vo) {
	   naMapper.join(vo);
	   return "main"; 
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
   @RequestMapping(value = "/noinsert.do")
   public String main_guard(requestVO vo) {
     naMapper.addnoin(vo);
      return "redirect:/About.do";
   }
   @RequestMapping(value = "/noin_main.do")
   public String main_senior() {
      return "noin_main";
   }
   @RequestMapping(value = "/noin_help.do")
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
   public String about2() {
      return "about2";
   }
   @RequestMapping("/realnoin.do")
   public String realnoin(int idx) {
	   naMapper.add_del(idx);
	   return "redirect:/about3.do";
   }

   @RequestMapping(value = "/about3.do")
   public String about3(HttpServletRequest request) {
	   List<seniorVO> list1 = naMapper.showlist();
	   request.setAttribute("list", list1);
      return "about3";
   }
   @RequestMapping(value = "/status.do")
   public String status() {
      return "status";
   }
   // Controller에 만들어져있나요?
   // 아 이 counselor가 그 페이지에요?넹
   @RequestMapping("/counselor.do")
   public String welfareList(Model model) {
	   List<welfare_workerVO> list = naMapper.counselor();	   
	   // 일단 여기까지는 문제없고
	   model.addAttribute("welfareList", list);
	   return "counselor";
   }
   
   @RequestMapping(value = "/sinchung.do")
   public String sinchung() {
      return "sinchung";
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
  
  
   
}