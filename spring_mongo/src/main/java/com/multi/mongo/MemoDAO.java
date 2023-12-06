package com.multi.mongo;

import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

@Repository
public class MemoDAO {
	
	@Autowired
	MongoTemplate mongo;
	
	public void update(MemoVO vo) {
		Query query = new Query(new Criteria("_id").is(vo.get_id()));
		Update update = new Update();
		update.set("content", vo.getContent());
		mongo.updateFirst(query, update, MemoVO.class, "memo");
	}
	
	public void delete(String _id) {
		Query query = new Query(new Criteria("_id").is(_id));
		mongo.remove(query,"memo");
	}
	
	public void insert(MemoVO vo) {
		vo.setDate(new Date());
		mongo.insert(vo,"memo");
	}
	public MemoVO one(String _id) {
		return mongo.findById(_id, MemoVO.class,"memo");
	}
	public List<MemoVO> list() {
		Query query = new Query();
		query.with(new Sort(Sort.Direction.DESC, "date"));
		return mongo.find(query, MemoVO.class, "memo");
	}
}
