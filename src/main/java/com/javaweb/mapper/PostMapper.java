package com.javaweb.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.javaweb.model.PostModel;

public class PostMapper implements RowMapper<PostModel> {

	@Override
	public PostModel mapRow(ResultSet rs) {
		try {
			PostModel post = new PostModel();
			post.setId(rs.getLong("id"));
			post.setTitle(rs.getString("title"));
			post.setApartmentNumber(rs.getString("apartmentNumber"));
			post.setAcreage(rs.getFloat("acreage"));
			post.setPrice(rs.getLong("price"));
			post.setDescription(rs.getString("description"));
			post.setContactName(rs.getString("contactName"));
			post.setPhoneNumber(rs.getString("phoneNumber"));
			post.setAddress(rs.getString("address"));
			post.setCreatedDate(rs.getTimestamp("createdDate"));
			post.setUserId(rs.getLong("userId"));
			post.setCategoryId(rs.getInt("categoryId"));
			post.setStreetId(rs.getString("streetId"));
			return post;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
