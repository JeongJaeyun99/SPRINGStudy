package com.multi.mongo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.shineware.nlp.komoran.constant.DEFAULT_MODEL;
import kr.co.shineware.nlp.komoran.core.Komoran;
import kr.co.shineware.nlp.komoran.model.KomoranResult;

@Service
public class DictionaryService {
	
	@Autowired
	DictionaryDAO dao;
	
	public void emotion(String sentence) {
		Komoran komoran = new Komoran(DEFAULT_MODEL.FULL);
		KomoranResult result = komoran.analyze(sentence);
		List<String> list = result.getNouns();
		System.out.println(list);
		for (String s : list) {
			DictionaryVO vo = dao.one(s);
			if(vo != null) {
				System.out.println(vo.getJumsu());				
			}
		}
	}
}
