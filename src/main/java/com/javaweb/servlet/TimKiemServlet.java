package com.javaweb.servlet;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaweb.dao.CategoryDao;
import com.javaweb.dao.FilterPriceDao;
import com.javaweb.dao.PhotoDao;
import com.javaweb.dao.PostDao;
import com.javaweb.dao.StreetDao;
import com.javaweb.model.PostModel;
import com.javaweb.model.SearchModel;

@WebServlet("/tim-kiem")
public class TimKiemServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Inject
	private PostDao postDao;
	
	@Inject
	private StreetDao streetDao;
	
	@Inject
	private PhotoDao photoDao;
	
	@Inject
	private CategoryDao categoryDao;
	
	@Inject
	private FilterPriceDao filterPriceDao;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		int categoryId = Integer.parseInt(req.getParameter("categoryId")); 
		String streetId = req.getParameter("streetId");
		Long price = Long.parseLong(req.getParameter("price"));
		float acreage = Float.parseFloat(req.getParameter("acreage"));
		List<PostModel> posts = postDao.search(categoryId, streetId, price, acreage);
		String notify = "";
		int count = 0;
		if (posts.isEmpty()) {
			count++;
			notify = "Không tìm thấy bài viết nào.";
		} else {
			notify = "Đã tìm thấy " + posts.size() + " bài viết.";
		}
		SearchModel searchModel = new SearchModel(categoryId, streetId, price, acreage);
		req.setAttribute("prices", filterPriceDao.getAll());
		req.setAttribute("searchModel", searchModel);
		req.setAttribute("notify", notify);
		req.setAttribute("count", count);
		req.setAttribute("posts", posts);
		req.setAttribute("streets", streetDao.getAll());
		req.setAttribute("photos", photoDao.getthumbnails());
		req.setAttribute("categories", categoryDao.getCategories());
		RequestDispatcher rd = req.getRequestDispatcher("/views/ket-qua.jsp");
		rd.forward(req, resp);
	}
}
