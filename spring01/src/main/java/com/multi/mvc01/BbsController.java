package com.multi.mvc01;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {
	
	@RequestMapping("insert2")
	public void insert2(BbsDTO2 bag, Model model) {
		BbsDAO dao = new BbsDAO();//????????
     	int result = dao.insert(bag);//1
     	System.out.println(result);
     	model.addAttribute("result",result);
	}
	@RequestMapping("update2")
	public String update2(BbsDTO2 bag) {
		BbsDAO dao = new BbsDAO();//????????
		int result = dao.update(bag);
		if(result==1) {
			return "redirect:bbs.jsp";
		}else {
			return "no";
		}
	}
	@RequestMapping("delete2")
	public void delete(BbsDTO2 bag,Model model) {
		BbsDAO dao = new BbsDAO();
		int result = dao.delete(bag);
		model.addAttribute("result",result);
	}
}
