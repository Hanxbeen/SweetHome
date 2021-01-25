package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.dto.Answer;
import com.ssafy.happyhouse.model.repo.AnswerRepo;

@Service
public class AnswerServiceImpl implements AnswerService{

	@Autowired
	AnswerRepo repo;
	
	@Override
	public Answer select(int noa) {
		return repo.select(noa);
	}

	@Override
	public List<Answer> selectByUser(String userid) {
		return repo.selectByUser(userid);
	}

	@Override
	public List<Answer> selectByNoq(int noq) {
		return repo.selectByNoq(noq);
	}

	@Override
	public List<Answer> selectAll() {
		return repo.selectAll();
	}

	@Override
	public int update(Answer answer) {
		return repo.update(answer);
	}

	@Override
	public int delete(int noa) {
		return repo.delete(noa);
	}

	@Override
	public int deleteByNoq(int noq) {
		return repo.deleteByNoq(noq);
	}

	@Override
	public int insert(Answer answer) {
		return repo.insert(answer);
	}

}
