package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.dto.Question;
import com.ssafy.happyhouse.model.repo.QuestionRepo;

@Service
public class QuestionServiceImpl implements QuestionService{

	@Autowired
	QuestionRepo repo;
	
	@Override
	public Question select(int noq) {
		return repo.select(noq);
	}

	@Override
	public List<Question> selectByUser(String userid) {
		return repo.selectByUser(userid);
	}

	@Override
	public List<Question> selectByTitle(String word) {
		return repo.selectByTitle(word);
	}

	@Override
	public List<Question> selectAll() {
		return repo.selectAll();
	}

	@Override
	public int update(Question question) {
		return repo.update(question);
	}

	@Override
	public int delete(int noq) {
		return repo.delete(noq);
	}

	@Override
	public int insert(Question question) {
		return repo.insert(question);
	}

}
