package com.javaweb.dao;

import java.util.List;

import com.javaweb.model.PhotoModel;

public interface PhotoDao {

	public Long insert(PhotoModel photo);
	public void deleteByPostId(Long postId);
	public List<PhotoModel> getByPostId(Long postId);
	public List<PhotoModel> getAll();
	public List<PhotoModel> getthumbnails();
	public PhotoModel getThumbnailByPostId(Long postId);
}
