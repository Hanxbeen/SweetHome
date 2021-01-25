package com.ssafy.happyhouse.model.service;

import java.util.List;

import com.ssafy.happyhouse.model.dto.Answer;

public interface AnswerService {
	public Answer select(int noa);
	public List<Answer> selectByUser(String userid);
	public List<Answer> selectByNoq(int noq);
	public List<Answer> selectAll();
	public int update(Answer answer);
	public int delete(int noa);
	public int deleteByNoq(int noq);
	public int insert(Answer answer);
	
}
