package com.javaweb.dao.impl;

import java.util.List;

import com.javaweb.dao.PhotoDao;
import com.javaweb.mapper.PhotoMapper;
import com.javaweb.model.PhotoModel;

public class PhotoDaoImpl extends AbstractDao<PhotoModel> implements PhotoDao {

	@Override
	public Long insert(PhotoModel photo) {
		String sql = "INSERT INTO photo(name, postId) VALUES (?, ?)";
		return insert(sql, photo.getName(), photo.getPostId());
	}

	@Override
	public void deleteByPostId(Long postId) {
		String sql = "DELETE FROM photo WHERE postId=?";
		update(sql, postId);
	}

	@Override
	public List<PhotoModel> getByPostId(Long postId) {
		String sql = "SELECT * FROM photo WHERE postId=?";
		return queryList(sql, new PhotoMapper(), postId);
	}

	@Override
	public List<PhotoModel> getAll() {
		String sql = "SELECT * FROM photo";
		return queryList(sql, new PhotoMapper());
	}

	@Override
	public List<PhotoModel> getthumbnails() {
		String sql = "SELECT * FROM photo GROUP BY postId";
		return queryList(sql, new PhotoMapper());
	}

	@Override
	public PhotoModel getThumbnailByPostId(Long postId) {
		String sql = "SELECT * FROM photo WHERE postId=? LIMIT 1";
		return query(sql, new PhotoMapper(), postId);
	}

}
