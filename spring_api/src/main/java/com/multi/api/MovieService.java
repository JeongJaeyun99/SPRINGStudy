package com.multi.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieService {
	
	@Autowired
	MovieDAO dao;
	
	public void insert(MovieVO movievo) {
		// 전처리 단계!!!
		dao.insert(movievo);
	}
	
}
