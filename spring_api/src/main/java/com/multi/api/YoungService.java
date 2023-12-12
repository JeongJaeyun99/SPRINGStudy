package com.multi.api;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class YoungService {
	
	@Autowired
	YoungDAO dao;
	
	public void insert() {
		// 전처리 단계!!!
		청년지원센터_청년정책2 young = new 청년지원센터_청년정책2();
		ArrayList<YoungVO> youngvo = young.parse();
		for (YoungVO youngVO : youngvo) {
			dao.insert(youngVO);
		}
	}
	
}
