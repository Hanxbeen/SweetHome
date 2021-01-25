package com.ssafy.happyhouse.model.repo;

import java.util.List;

import com.ssafy.happyhouse.model.dto.User;

public interface UserRepo {
	public User select(String userid);
	public List<User> selectAll();
	public int update(User user);
	public int delete(String userid);
	public int insert(User user);
	public User login(User user);
}
