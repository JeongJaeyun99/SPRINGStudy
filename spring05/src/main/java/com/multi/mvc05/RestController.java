package com.multi.mvc05;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RestController {
	
	@RequestMapping("string")
	@ResponseBody // views로 안가고 바로 데이터만 넘겨쥼
	public String string() {
		return "winner";
	}
	@RequestMapping("json1")
	@ResponseBody // views로 안가고 바로 데이터만 넘겨쥼
	public BbsDTO json1() {
		BbsDTO dto = new BbsDTO();
		dto.setId(1);
		dto.setTitle("win");
		dto.setContent("win!! win!!");
		dto.setWriter("apple");
		return dto;
	}
	@RequestMapping("json2")
	@ResponseBody // views로 안가고 바로 데이터만 넘겨쥼
	public ArrayList<BbsDTO> json2() {
		ArrayList<BbsDTO> list = new ArrayList<BbsDTO>();
		for (int i = 0; i < 5; i++) {
			BbsDTO dto = new BbsDTO();
			dto.setId(i);
			dto.setTitle("win" + i);
			dto.setContent("win!! win!!" + i);
			dto.setWriter("apple");
			list.add(dto);
		}
		return list;
	}
	@RequestMapping("map1")
	@ResponseBody
	public MapVO kakaoMap() {
		MapVO map = new MapVO();
		map.setLat(37.5116828);
		map.setLon(127.059151);
		return map;
	}
}
