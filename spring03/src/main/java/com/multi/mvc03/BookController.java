package com.multi.mvc03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.mvc03.BookDTO;

@Controller
public class BookController {
	
	@Autowired
	BookDAO dao;
	
	@RequestMapping("insert")
	public void insert2(BookDTO bag, Model model) {
     	int result = dao.insert(bag);//1
     	System.out.println(result);
     	model.addAttribute("result",result);
	}
	@RequestMapping("update")
	public String update(BookDTO bag, Model model) {
		int result = dao.update(bag);
		model.addAttribute("result",result);
		if(result == 1) {
			return "update";
		}else {
			return "redirect:book.jsp";
		}
	}
	@RequestMapping("delete")
	public void delete(BookDTO bag,Model model) {
		int result = dao.delete(bag);
		model.addAttribute("result",result);
	}
	@RequestMapping("one")
	public void one(BookDTO dto, Model model) throws Exception{
		BookDTO bag = dao.one(dto);
		model.addAttribute("bag",bag);
	}			
	@RequestMapping("list")
	public void list(Model model) throws Exception{
		List<BookDTO> list = dao.list();
		model.addAttribute("list",list);
	}
}	
