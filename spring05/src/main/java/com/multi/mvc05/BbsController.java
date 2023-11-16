package com.multi.mvc05;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BbsController {
	
	@Autowired
	BbsDAO dao;
	
	@Autowired
	ReplyDAO dao2;	
	
	@RequestMapping("insert2")
	public void insert2(BbsDTO bag, Model model) {
     	int result = dao.insert(bag);//1
     	System.out.println(result);
     	model.addAttribute("result",result);
	}
	@RequestMapping("update2")
	public String update2(BbsDTO bag) {
		int result = dao.update(bag);
		if(result==1) {
			return "redirect:bbs.jsp";
		}else {
			return "no";
		}
	}
	@RequestMapping("delete2")
	public void delete(BbsDTO bag,Model model) {
		int result = dao.delete(bag);
		model.addAttribute("result",result);
	}
	@RequestMapping("one")
	public void one(BbsDTO dto, Model model) throws Exception{
		BbsDTO bag = dao.one(dto);
		List<ReplyDTO> list = dao2.list(dto.getId());
		model.addAttribute("bag",bag);
		model.addAttribute("list",list);
	}			
	@RequestMapping("list")
	public void list(Model model) throws Exception{
		List<BbsDTO> list = dao.list();
		model.addAttribute("list",list);
//		System.out.println(list.size());
	}
	@RequestMapping("jsonbbs")
	@ResponseBody
	public List<BbsDTO> list() throws Exception{
		List<BbsDTO> list = dao.list();
		return list;
	}
}
