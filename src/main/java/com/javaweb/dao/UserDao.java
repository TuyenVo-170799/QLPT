package com.javaweb.dao;

import com.javaweb.model.UserModel;

public interface UserDao {

	public Long add(UserModel user);
	public void update(UserModel user);
	public void delete(long id);
	public UserModel getByUserNameAndPassword(String userName, String password, String phoneNumber);
	public boolean checkUserNameOrPhone(String userName, String phoneNumber);
}
