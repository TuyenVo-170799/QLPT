package com.javaweb.dao.impl;

import java.util.List;

import com.javaweb.dao.StreetDao;
import com.javaweb.mapper.StreetMapper;
import com.javaweb.model.StreetModel;

public class StreetDaoImpl extends AbstractDao<StreetModel> implements StreetDao {

	@Override
	public StreetModel getById(String id) {
		String sql = "SELECT * FROM street WHERE id=?";
		return query(sql, new StreetMapper(), id);
	}

	@Override
	public List<StreetModel> getAll() {
		String sql = "SELECT * FROM street";
		return queryList(sql, new StreetMapper());
	}

	
}
