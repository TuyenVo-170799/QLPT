package com.javaweb.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.javaweb.model.CategoryModel;

public class CategoryMapper implements RowMapper<CategoryModel> {

	@Override
	public CategoryModel mapRow(ResultSet rs) {
		try {
			CategoryModel category = new CategoryModel();
			category.setId(rs.getInt("id"));
			category.setName(rs.getString("name"));
			category.setCode(rs.getString("code"));
			return category;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
