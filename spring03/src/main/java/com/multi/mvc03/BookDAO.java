package com.multi.mvc03;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

@Repository
public class BookDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public int insert(BookDTO dto) {
		int result = my.insert("book.create",dto);
		return result;
	}
	
	
	public int update(BookDTO dto) {
		int result = my.update("book.update",dto);
		return result;
	}
	

	public int delete(BookDTO dto) {
		int result = my.delete("book.delete",dto);
		return result;
	}
	// 리스트 전체 보기
	public List<BookDTO> list() throws Exception {
		List<BookDTO> list = my.selectList("book.list");
		return list;
	}

	// 리스트 중에서 선택한 물건 하나 보기
	public BookDTO one(BookDTO dto) throws Exception {
		BookDTO dto2 = my.selectOne("book.one",dto);
		return dto2;
	}
}
