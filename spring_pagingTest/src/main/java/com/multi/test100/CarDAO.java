package com.multi.test100;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CarDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public List<CarVO> list(PageVO2 vo2) {
		return my.selectList("car.list",vo2);
	}
	public int count() {
		return my.selectOne("car.count");
	}
}
