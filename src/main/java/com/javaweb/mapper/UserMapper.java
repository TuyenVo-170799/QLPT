package com.javaweb.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.javaweb.model.UserModel;

public class UserMapper implements RowMapper<UserModel> {

	@Override
	public UserModel mapRow(ResultSet rs) {
		try {
			UserModel user = new UserModel();
			user.setId(rs.getLong("id"));
			user.setUserName(rs.getString("userName"));
			user.setPassword(rs.getString("password"));
			user.setFullName(rs.getString("fullName"));
			user.setPhoneNumber(rs.getString("phoneNumber"));
			user.setRoleId(rs.getInt("roleId"));
			return user;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
