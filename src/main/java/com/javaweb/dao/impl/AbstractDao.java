package com.javaweb.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.javaweb.mapper.RowMapper;
import com.javaweb.util.DatabaseConnection;

public class AbstractDao<T> {

	// Hàm truyền tham số để thực hiện query database (hàm chung)
	public void setParameter(PreparedStatement ps, Object... parameters) {
		try {
			for (int i = 0; i < parameters.length; i++) {
				Object parameter = parameters[i];
				int index = i + 1;
				if (parameter instanceof String) {
					ps.setString(index, (String) parameter);
				}
				if (parameter instanceof Long) {
					ps.setLong(index, (Long) parameter);
				}
				if (parameter instanceof Integer) {
					ps.setInt(index, (Integer) parameter);
				}
				if (parameter instanceof Timestamp) {
					ps.setTimestamp(index, (Timestamp) parameter);
				}
				if (parameter instanceof Float) {
					ps.setFloat(index, (Float) parameter);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// Hàm query một bảng ghi từ database lên (hàm chung)
	public T query(String sql, RowMapper<T> rowMapper, Object... parameters) {
		T result = null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = DatabaseConnection.initializeDatabase();
			ps = con.prepareStatement(sql);
			setParameter(ps, parameters);
			rs = ps.executeQuery();
			while (rs.next()) {
				result = (rowMapper.mapRow(rs));
			}
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				if (con != null) {
					con.close();
				}
				if (ps != null) {
					ps.close();
				}
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				return null;
			}
		}
	}
	
	// Hàm query nhiều bảng ghi từ database lên (hàm chung)
	public List<T> queryList(String sql, RowMapper<T> rowMapper, Object... parameters) {
		List<T> results = new ArrayList<>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = DatabaseConnection.initializeDatabase();
			ps = con.prepareStatement(sql);
			setParameter(ps, parameters);
			rs = ps.executeQuery();
			while (rs.next()) {
				results.add(rowMapper.mapRow(rs));
			}
			return results;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				if (con != null) {
					con.close();
				}
				if (ps != null) {
					ps.close();
				}
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				return null;
			}
		}
	}
	
	// Hàm insert data xuống database (hàm chung)
	public Long insert(String sql, Object... parameters) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			Long id = null;
			con = DatabaseConnection.initializeDatabase();
			con.setAutoCommit(false);
			ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			setParameter(ps, parameters);
			ps.executeUpdate();
			rs = ps.getGeneratedKeys();
			while (rs.next()) {
				id = rs.getLong(1);
			}
			// lưu thay đổi vào database
			con.commit();
			return id;
		} catch (SQLException e) {
			e.printStackTrace();
			// kiểm tra nếu đã kết nối database rồi nhưng gặp lỗi trong TRY thì không thực hiện lưu thay đổi
			if (con != null) {
				try {
					con.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		} finally {
			try {
				if (con != null) {
					con.close();
				}
				if (ps != null) {
					ps.close();
				}
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
		}
		return null;
	}
	
	// Hàm update, delete data (hàm chung)
	public void update(String sql, Object... parameters) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DatabaseConnection.initializeDatabase();
			con.setAutoCommit(false);
			ps = con.prepareStatement(sql);
			setParameter(ps, parameters);
			ps.executeUpdate();
			con.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			if (con != null) {
				try {
					con.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		} finally {
			try {
				if (con != null) {
					con.close();
				}
				if (ps != null) {
					ps.close();
				}
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
		}
	}
}
