package com.smhrd.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.mapper.nahonsanMapper;
import com.smhrd.mapper.testVO;

@Controller
public class nahonsanController {

	@Autowired
	nahonsanMapper naMapper;
	
	
	
	@RequestMapping("/loginTEST.do")
	public String loginTEST(testVO test) {
		naMapper.login(test);
		
		return "loginsuccesstest";
	}
}
