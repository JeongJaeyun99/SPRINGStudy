package com.multi.mvc05;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FruitTravelController {
	
	@RequestMapping("fruit")
	public void fruit(FruitDTO dto, Model model) {
		model.addAttribute("dto1",dto);
	}
	@RequestMapping("travel")
	public void travel(TravelDTO dto, Model model) {
		model.addAttribute("dto2",dto);
	}
}
