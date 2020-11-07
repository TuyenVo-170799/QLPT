package com.javaweb.dao.impl;

import com.javaweb.dao.UserDao;
import com.javaweb.mapper.UserMapper;
import com.javaweb.model.UserModel;

public class UserDaoImpl extends AbstractDao<UserModel> implements UserDao {

	@Override
	public Long add(UserModel user) {
		String sql = "INSERT INTO user(userName, password, fullName, phoneNumber, roleId) VALUES (?, ?, ?, ?, ?)";
		return insert(sql, user.getUserName(), user.getPassword(), user.getFullName(), user.getPhoneNumber(), user.getRoleId());
	}

	@Override
	public void update(UserModel user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public UserModel getByUserNameAndPassword(String userName, String password, String phoneNumber) {
		String sql = "SELECT * FROM user WHERE (userName=? OR phoneNumber=?) AND password=? AND roleId=2";
		return query(sql, new UserMapper(), userName, phoneNumber, password);
	}

	@Override
	public boolean checkUserNameOrPhone(String userName, String phoneNumber) {
		String sql = "SELECT * FROM user WHERE userName=? OR phoneNumber=?";
		UserModel user = query(sql, new UserMapper(), userName, phoneNumber);
		if (user != null) {
			return true;
		}
		return false;
	}

}
