package com.multi.test100;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	
	@Autowired
	PageDAO dao;
	
	@RequestMapping("list1")
	public void list(PageVO pageVO,Model model) {
		pageVO.setStartEnd();
		List<BbsVO> list = dao.list(pageVO);
		System.out.println(list.size());
		model.addAttribute("list1",list);
	}
	
	@RequestMapping("list2")
	public void list2(PageVO pageVO,Model model) {
		pageVO.setStartEnd();
		List<BbsVO> list = dao.list(pageVO);
		int count = dao.count();
		int pages = count / 10;
		if(count % 10 != 0) {
			pages = (count / 10)+1;
		}
		System.out.println(list.size());
		model.addAttribute("list1",list);
		model.addAttribute("count",count);		
		model.addAttribute("pages",pages);
	}
	@RequestMapping("list3")
	public void list3(PageVO pageVO,Model model) {
		pageVO.setStartEnd();
		List<BbsVO> list = dao.list(pageVO);
		int count = dao.count();
		int pages = count / 10;
		if(count % 10 != 0) {
			pages = (count / 10)+1;
		}
		System.out.println(list.size());
		model.addAttribute("list1",list);
		model.addAttribute("count",count);		
		model.addAttribute("pages",pages);
	}
	
}
