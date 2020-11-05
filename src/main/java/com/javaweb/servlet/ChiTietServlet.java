package com.javaweb.servlet;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaweb.dao.CategoryDao;
import com.javaweb.dao.PhotoDao;
import com.javaweb.dao.PostDao;
import com.javaweb.dao.StreetDao;
import com.javaweb.model.PostModel;

@WebServlet("/chi-tiet")
public class ChiTietServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	@Inject
	private PostDao postDao;
	
	@Inject
	private StreetDao streetDao;
	
	@Inject
	private CategoryDao categoryDao;
	
	@Inject
	private PhotoDao photoDao;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Long id = Long.parseLong(req.getParameter("id"));
		PostModel post = postDao.getById(id);
		req.setAttribute("post", post);
		req.setAttribute("street", streetDao.getById(post.getStreetId()));
		req.setAttribute("category", categoryDao.getCategoryById(post.getCategoryId()));
		req.setAttribute("photos", photoDao.getByPostId(post.getId()));
		req.setAttribute("thumbnail", photoDao.getThumbnailByPostId(post.getId()));
		RequestDispatcher rd = req.getRequestDispatcher("/views/chi-tiet-tin.jsp");
		rd.forward(req, resp);
	}

}
