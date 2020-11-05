package com.javaweb.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.javaweb.model.StreetModel;

public class StreetMapper implements RowMapper<StreetModel> {

	@Override
	public StreetModel mapRow(ResultSet rs) {
		try {
			StreetModel street = new StreetModel();
			street.setId(rs.getString("id"));
			street.setName(rs.getString("name"));
			return street;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
