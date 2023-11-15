package com.multi.mvc05;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {
	
	@Autowired
	BbsDAO dao;
	
	@RequestMapping("insert2")
	public void insert2(BbsDTO2 bag, Model model) {
     	int result = dao.insert(bag);//1
     	System.out.println(result);
     	model.addAttribute("result",result);
	}
	@RequestMapping("update2")
	public String update2(BbsDTO2 bag) {
		int result = dao.update(bag);
		if(result==1) {
			return "redirect:bbs.jsp";
		}else {
			return "no";
		}
	}
	@RequestMapping("delete2")
	public void delete(BbsDTO2 bag,Model model) {
		int result = dao.delete(bag);
		model.addAttribute("result",result);
	}
	@RequestMapping("one")
	public void one(BbsDTO2 dto, Model model) throws Exception{
		BbsDTO2 bag = dao.one(dto);
		model.addAttribute("bag",bag);
	}			
	@RequestMapping("list")
	public void list(Model model) throws Exception{
		List<BbsDTO2> list = dao.list();
		model.addAttribute("list",list);
//		System.out.println(list.size());
	}
}
