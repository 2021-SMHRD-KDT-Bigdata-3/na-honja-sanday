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
   
   
//   @RequestMapping("/login.do") 
//   public String login(loginVO vo){ 
//      if(vo.getId()==""  || vo.getPassword()=="") { 
//         return "redirect:/login.do"; 
//      }else if(vo.getSeperator() == "1"){
//        
//        naMapper.login(vo);
//        return "main"; 
//      }else {
//         return "main";
//      }
//      }
   
  
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
	   //지금 여기로 들어올때 매개변수로 loginVO받아올때 vo가 null인 상태인거 같거든요?
	   //흠 잠시만용 기억이 잘안나 HttpServletRequest request,
	   //vo.setPhone(request.getParameter("tel"));
	   //System.out.println(vo.getPhone());
	   naMapper.join(vo); // 보이죵?넹  흐름 설명 해줄게용!
	   // join.jsp ---> join_welfare.do로 왔음 ---> 이때 입력한 데이터 request안에 담김
	   // ----> 매개변수로 request 하나 받아옴! 위에처럼 ---> 그럼 이전에 jsp,servlet했던것처럼 form태그 안에 입력받았던 데이터
	   // getparameter메소드 사용해서 하나씩 꺼내올 수 있음. ---> 꺼내온 데이터를 비어있는 vo에 담아서 ---> mapper로 보내주기
	   // 이해안되는 부분 물어볼래용?
	   // 왜 비었을까요? loginVO로 매개변수 받아올래!라고 써놔도 안담겨서? 이렇게 바뀌면 될수도 있어요! 해보까용?
	   // 이해되엇나여넹 ㅎ힣ㅎㅎㅎㅎㅎ 맞춰줘야해여! 그래서 저는 lombok쓸때좋으면서도 불편ㅇ하더라구용
	   // 한번 눈으로 보면서 확인해봐요!네네엥
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
	public String about2(){
		return "about2";
	}
	@RequestMapping(value = "/realnoin.do")
	public String realnoin(int idx) {
		naMapper.add_del(idx);
		return "redirect:/about3.do";
	}
	@RequestMapping(value = "/about3.do")
	public String about3(HttpServletRequest request) {
		 List<seniorVO> list1 = naMapper.showlist();
		request.setAttribute("list1", list1);
		return "about3";
	}
	@RequestMapping(value = "/delnoin.do")
	public String delnoin(int idx) {
		naMapper.delnoin(idx);
		return "redirect:/about3.do";
	}
	@RequestMapping(value = "/counselor.do")
	public String counselor() {
		return "counselor";
	}
	@RequestMapping(value = "/main.do")
	public String main1() {
		return "main";
	}
	@RequestMapping(value = "/status.do")
	public String status() {
		return "status";
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