package com.multi.api;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.XML;
import org.springframework.web.client.RestTemplate;

public class 청년지원센터_청년정책 {

	public static void main(String[] args) {
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
		System.out.println(arr.getJSONObject(0).getString("bizId"));
		System.out.println(arr.getJSONObject(0).getString("polyBizSjnm"));
		System.out.println(arr.getJSONObject(0).getString("plcyTpNm"));
		System.out.println(arr.getJSONObject(0).getString("cnsgNmor"));
		System.out.println(arr.getJSONObject(0).getString("rqutProcCn"));
	}

}