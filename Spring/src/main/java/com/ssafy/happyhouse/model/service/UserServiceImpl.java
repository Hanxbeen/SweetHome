package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.dto.User;
import com.ssafy.happyhouse.model.repo.UserRepo;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserRepo repo;

	@Override
	public User login(User user) throws Exception{
		return repo.login(user);
	}

	@Override
	public int regist(User user) {
		return repo.insert(user);
	}

	@Override
	public int edit(User user) {
		return repo.update(user);
	}

	@Override
	public int withdraw(String userid) {
		return repo.delete(userid);
	}

	@Override
	public List<User> selectAll() {
		return repo.selectAll();
	}
	
}
