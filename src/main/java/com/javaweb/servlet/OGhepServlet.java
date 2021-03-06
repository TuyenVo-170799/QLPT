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

@WebServlet("/o-ghep")
public class OGhepServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Inject
	private PostDao postDao;
	
	@Inject
	private StreetDao streetDao;
	
	@Inject
	private PhotoDao photoDao;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("posts", postDao.getAllByCate(3));
		req.setAttribute("streets", streetDao.getAll());
		req.setAttribute("photos", photoDao.getthumbnails());
		RequestDispatcher rd = req.getRequestDispatcher("/views/o-ghep.jsp");
		rd.forward(req, resp);
	}
}
