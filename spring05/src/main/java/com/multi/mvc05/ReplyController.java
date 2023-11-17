package com.multi.mvc05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ReplyController {
	
	@Autowired
	ReplyDAO replyDAO;

	
	@RequestMapping("insert4")
	public void insert(ReplyDTO replyDTO, Model model) {
		int result = replyDAO.insert(replyDTO);
		model.addAttribute("result",result);
	}
	
}
