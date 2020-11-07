package com.javaweb.dao.impl;

import java.util.List;

import com.javaweb.dao.FilterPriceDao;
import com.javaweb.mapper.FilterPriceMapper;
import com.javaweb.model.FilterPriceModel;

public class FilterPriceDaoImpl extends AbstractDao<FilterPriceModel> implements FilterPriceDao {

	@Override
	public List<FilterPriceModel> getAll() {
		String sql = "SELECT * FROM filter_price";
		return queryList(sql, new FilterPriceMapper());
	}

}
