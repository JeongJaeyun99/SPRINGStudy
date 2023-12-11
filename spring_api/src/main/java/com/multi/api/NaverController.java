package com.multi.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NaverController {
	
	@Autowired
	NaverService service;
	
	@RequestMapping("naverLogin")
	public void insert(NaverVO navervo) {
		service.insert(navervo);
	}
	
}
