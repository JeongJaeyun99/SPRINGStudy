package com.multi.mvc04;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
	
	@Autowired
	MovieDAO dao;
	
	@RequestMapping("insert2")
	public void insert2(MovieDTO bag, Model model) {
     	int result = dao.insert(bag);//1
     	model.addAttribute("result",result);
	}
	@RequestMapping("update2")
	public void update2(MovieDTO bag, Model model) {
		int result = dao.update(bag);
		model.addAttribute("result",result);
	}
	@RequestMapping("delete2")
	public void delete(MovieDTO bag,Model model) {
		int result = dao.delete(bag);
		model.addAttribute("result",result);
	}
	@RequestMapping("one2")
	public void one2(MovieDTO dto, Model model) throws Exception{
		MovieDTO bag = dao.one(dto);
		model.addAttribute("bag2",bag);
	}			
	@RequestMapping("list2")
	public void list2(Model model) throws Exception{
		List<MovieDTO> list = dao.list();
		model.addAttribute("list2",list);
	}
}	
