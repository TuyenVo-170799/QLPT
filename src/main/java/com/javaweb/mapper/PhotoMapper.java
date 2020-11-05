package com.javaweb.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.javaweb.model.PhotoModel;

public class PhotoMapper implements RowMapper<PhotoModel> {

	@Override
	public PhotoModel mapRow(ResultSet rs) {
		try {
			PhotoModel photo = new PhotoModel();
			photo.setId(rs.getLong("id"));
			photo.setName(rs.getString("name"));
			photo.setPostId(rs.getLong("postId"));
			return photo;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
