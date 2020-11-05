package com.javaweb.dao;

import java.util.List;

import com.javaweb.model.UserModel;

public interface UserDao {

	public int add(UserModel user);
	public void update(UserModel user);
	public void delete(long id);
	public UserModel getUser(long id);
	public List<UserModel> getUsers();
}
