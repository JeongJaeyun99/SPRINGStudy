package com.multi.mvc01;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@Autowired
	MemberDAO dao;
	
	@RequestMapping("insert")
	public void insert(MemberDTO bag) {
	    int result = dao.insert(bag); //int(1/0)
	    String resultText = "";
	    if(result == 1){
	    	resultText = "회원가입에 성공했습니다.";
	    }else{
	    	resultText = "회원가입에 실패했습니다.";
	    }
		System.out.println(resultText);
	}
	
	@RequestMapping("login")
	public void login(MemberDTO bag, HttpSession session) throws Exception{
    	int result = dao.login(bag); //boolean(true/false)
    	if(result == 1){ //if(조건) {조건이 true이면 이 괄호를 실행해라!}
    		//세션을 설정해주자.!!!
    		session.setAttribute("id", bag.getId());
    	}
	}
}
