package com.javaweb.dao.impl;

import java.util.List;

import javax.inject.Inject;

import com.javaweb.dao.PhotoDao;
import com.javaweb.dao.PostDao;
import com.javaweb.mapper.PostMapper;
import com.javaweb.model.PostModel;

public class PostDaoImpl extends AbstractDao<PostModel> implements PostDao {
	
	@Inject
	private PhotoDao photoDao;

	@Override
	public Long add(PostModel post) {
		StringBuilder sql = new StringBuilder("INSERT INTO post(title, apartmentNumber, ");
		sql.append("acreage, price, description, contactName, phoneNumber, ");
		sql.append("address, createdDate, userId, categoryId, streetId) ");
		sql.append("VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
		return (long) insert(sql.toString(), post.getTitle(), post.getApartmentNumber(), post.getAcreage(), post.getPrice(), post.getDescription(), post.getContactName(), post.getPhoneNumber(), post.getAddress(), post.getCreatedDate(), post.getUserId(), post.getCategoryId(), post.getStreetId());
	}

	@Override
	public void update(PostModel post) {
		StringBuilder sql = new StringBuilder("UPDATE post SET title=?, apartmentNumber=?, acreage=?, ");
		sql.append("price=?, description=?, contactName=?, phoneNumber=?, address=?, ");
		sql.append("categoryId=?, streetId=? WHERE id=?");
		update(sql.toString(), post.getTitle(), post.getApartmentNumber(), post.getAcreage(),
				post.getPrice(), post.getDescription(), post.getContactName(), post.getPhoneNumber(), post.getAddress(),
				post.getCategoryId(), post.getStreetId(), post.getId());
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FROM post WHERE id=?";
		photoDao.deleteByPostId(id);
		update(sql, id);
	}

	@Override
	public PostModel getById(long id) {
		String sql = "SELECT * FROM post WHERE id=?";
		PostModel post = query(sql, new PostMapper(), id);
		return post;
	}

	@Override
	public List<PostModel> getAll() {
		String sql = "SELECT * FROM post";
		return queryList(sql, new PostMapper());
	}

	@Override
	public List<PostModel> getByUserId(long userId) {
		String sql = "SELECT * FROM post WHERE userId=?";
		return queryList(sql, new PostMapper(), userId);
	}

	@Override
	public List<PostModel> getByCategoryId(int categoryId) {
		String sql = "SELECT * FROM post WHERE categoryId=? ORDER BY createdDate desc LIMIT 6";
		return queryList(sql, new PostMapper(), categoryId);
	}

	@Override
	public List<PostModel> search(int categoryId, String streetId, long price, float acreage) {
		int c1 = 0;
		int c2 = 0;
		int c3 = 0;
		if (categoryId == 0) {
			c1 = 1;
			c2 = 2;
			c3 = 3;
		} else {
			c1 = categoryId;
		}
		if (price == 0) {
			price = 5000000;
		}
		if (acreage == 0) {
			acreage = 100;
		}
		if (streetId.equals("null")) {
			streetId = "%";
		}
		StringBuilder sql = new StringBuilder("SELECT * FROM post WHERE categoryId in (?,?,?) ");
		sql.append("AND streetId LIKE ? AND price<=? AND acreage<=?");
		return queryList(sql.toString() , new PostMapper(), c1, c2, c3, streetId, price, acreage);
	}

	@Override
	public List<PostModel> getAllByCate(long categoryId) {
		String sql = "SELECT * FROM post WHERE categoryId=? ORDER BY createdDate desc";
		return queryList(sql, new PostMapper(), categoryId);
	}
	
}
