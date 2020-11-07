package com.javaweb.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.javaweb.model.FilterPriceModel;

public class FilterPriceMapper implements RowMapper<FilterPriceModel> {

	@Override
	public FilterPriceModel mapRow(ResultSet rs) {
		FilterPriceModel price = new FilterPriceModel();
		try {
			price.setName(rs.getString("name"));
			price.setValue(rs.getLong("value"));
			return price;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
