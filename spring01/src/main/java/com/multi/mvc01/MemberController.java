package com.multi.mvc01;

import org.springframework.web.bind.annotation.RequestMapping;

public class MemberController {
	
	@RequestMapping("insert")
	public void insert(MemberDTO bag) {
		
		System.out.println(bag);
	}
	public void login() {
		
	}
}
