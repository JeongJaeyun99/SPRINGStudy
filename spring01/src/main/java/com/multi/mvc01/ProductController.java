package com.multi.mvc01;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	@RequestMapping("insert3")
	public String insert3(ProductDTO bag, Model model) {
		ProductDAO dao = new ProductDAO();
		int result = dao.insert(bag);
		model.addAttribute("result",result);
		if(result == 1) {
			return "insert3";
		}else {
			return "redirect:product.jsp";
			// redirect 할때는 jsp까지 써줘야 한다.
			// 클라이언트에게 요청하도록 지시하므로
		}
	}
	@RequestMapping("update3")
	public String update3(ProductDTO bag, Model model) {
		ProductDAO dao = new ProductDAO();
		int result = dao.update(bag);
		model.addAttribute("result",result);
		if(result == 1) {
			return "update3";
		}else {
			return "redirect:update3.jsp";
			// redirect 할때는 jsp까지 써줘야 한다.
			// 클라이언트에게 요청하도록 지시하므로
		}
	}
	@RequestMapping("one2")
	public void one2(ProductDTO bag, Model model) throws Exception{
		ProductDAO dao = new ProductDAO();
		ProductDTO bag2 = dao.one(bag);
		model.addAttribute("bag",bag2);
	}
	@RequestMapping("list2")
	public void list2(Model model) throws Exception{
		ProductDAO dao = new ProductDAO();
		ArrayList<ProductDTO> list = dao.list();
		model.addAttribute("list",list);
	}
	
}
