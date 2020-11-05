package com.javaweb.dao.impl;

import java.util.List;

import com.javaweb.dao.CategoryDao;
import com.javaweb.mapper.CategoryMapper;
import com.javaweb.model.CategoryModel;

public class CategoryDaoImpl extends AbstractDao<CategoryModel> implements CategoryDao {

	@Override
	public int add(CategoryModel category) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void update(CategoryModel category) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public CategoryModel getCategoryById(int id) {
		String sql = "SELECT * FROM category WHERE id=?";
		CategoryModel category = query(sql, new CategoryMapper(), id);
		return category;
	}

	@Override
	public List<CategoryModel> getCategories() {
		String sql = "SELECT * FROM category";
		List<CategoryModel> categories = queryList(sql, new CategoryMapper());
		return categories;
	}

	
}
