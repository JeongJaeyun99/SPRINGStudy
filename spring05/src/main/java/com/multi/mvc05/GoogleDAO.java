package com.multi.mvc05;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoogleDAO {
	@Autowired
	SqlSessionTemplate my;
	
	public List<GoogleDTO> list() {
		return my.selectList("google.list");
	}
}
