package com.multi.api;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class YoungDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public void insert(YoungVO youngvo) {
		my.insert("young.insert1",youngvo);
	}
	
}
