package com.javaweb.util;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.javaweb.model.PostModel;
import com.javaweb.model.UserModel;

public class FormUtil {
	
	// hàm chuyển đổi các parameter lấy từ form request vào trong model
	public static PostModel toModel(HttpServletRequest req) throws ServletException, IOException {
		UserModel user = (UserModel) Session.getInstance().getSession(req, "USER");
		PostModel post = new PostModel();
		req.setCharacterEncoding("UTF-8");
		post.setTitle(req.getParameter("title"));
		post.setApartmentNumber(req.getParameter("apartmentNumber"));
		post.setAcreage(Float.parseFloat(req.getParameter("acreage")));
		post.setPrice(Long.parseLong(req.getParameter("price")));
		post.setDescription(req.getParameter("description"));
		post.setContactName(req.getParameter("contactName"));
		post.setPhoneNumber(req.getParameter("phoneNumber"));
		post.setAddress(req.getParameter("address"));
		post.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		post.setUserId(user.getId());
		post.setCategoryId(Integer.parseInt(req.getParameter("categoryId")));
		post.setStreetId(req.getParameter("streetId"));
		return post;
	}
}
