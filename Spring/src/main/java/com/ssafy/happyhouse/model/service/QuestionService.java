package com.ssafy.happyhouse.model.service;

import java.util.List;

import com.ssafy.happyhouse.model.dto.Question;

public interface QuestionService {
	public Question select(int noq);
	public List<Question> selectByUser(String userid);
	public List<Question> selectByTitle(String word);
	public List<Question> selectAll();
	public int update(Question question);
	public int delete(int noq);
	public int insert(Question question);
	
}
