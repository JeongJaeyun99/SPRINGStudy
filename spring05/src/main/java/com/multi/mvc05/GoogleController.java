package com.multi.mvc05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class GoogleController {
	
	@Autowired
	GoogleDAO googleDAO;
	
	@RequestMapping("jsonResponse")
	@ResponseBody
	public List<GoogleDTO> google() {
		return googleDAO.list();
	}
}
