package com.multi.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NaverService {
	
	@Autowired
	NaverDAO dao;
	
	public void insert(NaverVO navervo) {
		dao.insert(navervo);
	}
}
