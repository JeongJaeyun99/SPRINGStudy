package com.multi.test100;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CarController {
	
	@Autowired
	CarDAO dao;
	
	@RequestMapping("list4")
	public void list4(PageVO2 vo2,Model model) {
		vo2.setStartEnd();
		List<CarVO> list = dao.list(vo2);
		int count = dao.count();
		int pages = count / 5;
		if(pages % 5 != 0) {
			pages = (count / 5) + 1;
		}
		model.addAttribute("list",list);
		model.addAttribute("count",count);
		model.addAttribute("pages",pages);
	}
	@RequestMapping("list5")
	public void list5(PageVO2 vo2,Model model) {
		vo2.setStartEnd();
		List<CarVO> list = dao.list(vo2);
		int count = dao.count();
		int pages = count / 5;
		if(pages % 5 != 0) {
			pages = (count / 5) + 1;
		}
		model.addAttribute("list",list);
		model.addAttribute("count",count);
		model.addAttribute("pages",pages);
	}
	@RequestMapping("list0")
	public void list0(PageVO2 vo2,Model model) {
		vo2.setStartEnd();
		List<CarVO> list = dao.list(vo2);
		model.addAttribute("list",list);
	}
	
}
