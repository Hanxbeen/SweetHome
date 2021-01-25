package com.ssafy.happyhouse.model.service;

import java.util.List;

import com.ssafy.happyhouse.model.dto.User;

public interface UserService {
	
	public User login(User user) throws Exception;
	public int regist(User user);
	public int edit(User user);
	public int withdraw(String userid);
	public List<User> selectAll();
	
}
