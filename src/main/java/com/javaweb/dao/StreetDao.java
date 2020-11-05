package com.javaweb.dao;

import java.util.List;

import com.javaweb.model.StreetModel;

public interface StreetDao {

	public StreetModel getById(String id);
	public List<StreetModel> getAll();
}
