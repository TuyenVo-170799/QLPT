package com.javaweb.servlet;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaweb.dao.PhotoDao;
import com.javaweb.dao.PostDao;
import com.javaweb.dao.StreetDao;

@WebServlet("/trang-chu")
public class TrangChuServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Inject
	private PostDao postDao;
	
	@Inject
	private PhotoDao photoDao;
	
	@Inject
	private StreetDao streetDao;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// push ds phòng trọ
		req.setAttribute("ptPosts", postDao.getByCategoryId(1));
		// push ds ở ghép
		req.setAttribute("plusPosts", postDao.getByCategoryId(3));
		req.setAttribute("photos", photoDao.getthumbnails());
		req.setAttribute("streets", streetDao.getAll());
		RequestDispatcher rd = req.getRequestDispatcher("/views/trang-chu.jsp");
		rd.forward(req, resp);
	}
}
