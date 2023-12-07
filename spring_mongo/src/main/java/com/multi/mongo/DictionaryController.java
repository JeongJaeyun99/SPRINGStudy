package com.multi.mongo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DictionaryController {
	
	@Autowired
	DictionaryService service;
	
	@RequestMapping("emotion")
	public void one(String sentence,Model model) {
		String result = service.emotion(sentence);
		model.addAttribute("result",result);
	}
}
