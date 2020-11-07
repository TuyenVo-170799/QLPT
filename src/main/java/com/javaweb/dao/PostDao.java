package com.javaweb.dao;

import java.util.List;

import com.javaweb.model.PostModel;

public interface PostDao {

	public Long add(PostModel post);
	public void update(PostModel post);
	public void delete(long id);
	public PostModel getById(long id);
	public List<PostModel> getAll();
	public List<PostModel> getByUserId(long userId);
	public List<PostModel> getByCategoryId(int categoryId);
	public List<PostModel> search(int categoryId, String streetId, long price, float acreage);
	public List<PostModel> getAllByCate(long categoryId);
}
