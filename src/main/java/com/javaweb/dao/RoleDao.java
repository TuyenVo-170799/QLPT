package com.javaweb.dao;

import java.util.List;

import com.javaweb.model.RoleModel;

public interface RoleDao {

	public int add(RoleModel role);
	public void update(RoleModel role);
	public void delete(int id);
	public RoleModel getRole(int id);
	public List<RoleModel> getRoles();
}
