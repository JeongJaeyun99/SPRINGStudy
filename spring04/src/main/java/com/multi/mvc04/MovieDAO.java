package com.multi.mvc04;

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
public class MovieDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public int insert(MovieDTO dto) {
		int result = my.insert("movie.create",dto);
		return result;
	}
	
	
	public int update(MovieDTO dto) {
		int result = my.update("movie.update",dto);
		return result;
	}
	

	public int delete(MovieDTO dto) {
		int result = my.delete("movie.delete",dto);
		return result;
	}
	// 리스트 전체 보기
	public List<MovieDTO> list() throws Exception {
		List<MovieDTO> list = my.selectList("movie.list");
		return list;
	}

	// 리스트 중에서 선택한 물건 하나 보기
	public MovieDTO one(MovieDTO dto) throws Exception {
		MovieDTO dto2 = my.selectOne("movie.one",dto);
		return dto2;
	}
}
