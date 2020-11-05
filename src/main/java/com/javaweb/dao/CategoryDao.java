package com.javaweb.dao;

import java.util.List;

import com.javaweb.model.CategoryModel;

public interface CategoryDao {

	public int add(CategoryModel category);
	public void update(CategoryModel category);
	public void delete(int id);
	public CategoryModel getCategoryById(int id);
	public List<CategoryModel> getCategories();
}
