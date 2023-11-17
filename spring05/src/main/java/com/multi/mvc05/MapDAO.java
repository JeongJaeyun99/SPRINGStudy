package com.multi.mvc05;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MapDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public MapVO one(String location) {
		return my.selectOne("mymap.one",location);
	}
	
	public List<MapVO> all() {
		return my.selectList("mymap.all");
	}
	
}
