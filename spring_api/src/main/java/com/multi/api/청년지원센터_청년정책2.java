package com.multi.api;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.XML;
import org.springframework.web.client.RestTemplate;

public class 청년지원센터_청년정책2 {

	public ArrayList<YoungVO> parse() {
		//url + parameter
		String url = "https://www.youthcenter.go.kr/opi/empList.do";
		String parameter = "?openApiVlak=2853a1265426c8954d6b244d&pageIndex=1&display=10&query=청년취업";
		RestTemplate rest = new RestTemplate();
		String response = rest.getForObject(url + parameter, String.class);
//		System.out.println(response);
		JSONObject json = XML.toJSONObject(response);
		System.out.println(json);
		JSONObject empsInfo = json.getJSONObject("empsInfo");
		JSONArray arr = empsInfo.getJSONArray("emp");
		ArrayList<YoungVO> list = new ArrayList<YoungVO>();
		for (int i = 0; i < arr.length(); i++) {
			YoungVO vo = new YoungVO();
			vo.setBizId(arr.getJSONObject(i).getString("bizId"));
			vo.setPolyBizSjnm(arr.getJSONObject(i).getString("polyBizSjnm"));
			vo.setPlcyTpNm(arr.getJSONObject(i).getString("plcyTpNm"));
			vo.setCnsgNmor(arr.getJSONObject(i).getString("cnsgNmor"));
			vo.setRqutProcCn(arr.getJSONObject(i).getString("rqutProcCn"));
			list.add(vo);
		}
		
		return list;
	}

}