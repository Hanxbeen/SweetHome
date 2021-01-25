package com.ssafy.happyhouse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.model.dto.Answer;
import com.ssafy.happyhouse.model.dto.Question;
import com.ssafy.happyhouse.model.service.AnswerService;
import com.ssafy.happyhouse.model.service.QuestionService;

//@CrossOrigin("*")
@RestController
@RequestMapping("/qna")
public class QnAController {
	@Autowired
	QuestionService qservice;
	@Autowired
	AnswerService aservice;
	
	@GetMapping("/q/{noq}")
	public Question getQuestion(@PathVariable int noq) {
		return qservice.select(noq);
	}
	
	@GetMapping("/q")
	public List<Question> getAllQuestion(){
		return qservice.selectAll();
	}
	
	@GetMapping("/a/{noq}")
	public List<Answer> getAnswers(@PathVariable int noq){
		return aservice.selectByNoq(noq);
	}
	
	@PostMapping("/q")
	public int registQuestion(@RequestBody Question question) {
		return qservice.insert(question);
	}
	
	@PostMapping("/a")
	public int registAnswer(@RequestBody Answer answer) {
		return aservice.insert(answer);
	}
	
	@PutMapping("/q")
	public int updateQuestion(@RequestBody Question question) {
		return qservice.update(question);
	}
	
	@PutMapping("/a")
	public int updateAnswer(@RequestBody Answer answer) {
		return aservice.update(answer);
	}
	
	@DeleteMapping("/q/{noq}")
	public int deleteQuestion(@PathVariable int noq) {
		return qservice.delete(noq) + aservice.deleteByNoq(noq);
	}
	
	@DeleteMapping("/a/{noa}")
	public int deleteAnswer(@PathVariable int noa) {
		return aservice.delete(noa);
	}
	
}
