package com.javaweb.servlet;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaweb.dao.CategoryDao;
import com.javaweb.dao.PhotoDao;
import com.javaweb.dao.PostDao;
import com.javaweb.dao.StreetDao;
import com.javaweb.model.PhotoModel;
import com.javaweb.model.PostModel;
import com.javaweb.util.FormUtil;
import com.javaweb.util.UploadFileUtil;

@WebServlet(value = {"/quan-ly-tin", "/dang-tin", "/sua-tin", "/xoa-tin"})
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
		maxFileSize = 1024 * 1024 * 50, // 50 MB
		maxRequestSize = 1024 * 1024 * 100 // 100 MB
	)
public class QuanLytinServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Inject
	private PostDao postDao;
	
	@Inject
	private CategoryDao categoryDao;
	
	@Inject
	private StreetDao streetDao;
	
	@Inject
	private PhotoDao photoDao;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getServletPath();
		switch (action) {
			case "/quan-ly-tin":
				hienThiDS(req, resp);
				break;
			case "/dang-tin":
				hienThiDT(req, resp);
				break;
			case "/sua-tin":
				hienThiCS(req, resp);
				break;
			case "/xoa-tin":
				xoaTin(req, resp);
				break;
			default: 
				hienThiDS(req, resp);
				break;
		}
	}
	
	private void hienThiDS(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException  {
		List<PostModel> posts = postDao.getByUserId(2);
		req.setAttribute("posts", posts);
		RequestDispatcher rd = req.getRequestDispatcher("/views/quan-ly-tin.jsp");
		rd.forward(req, resp);
	}
	
	private void hienThiDT(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("categories", categoryDao.getCategories());
		req.setAttribute("streets", streetDao.getAll());
		RequestDispatcher rd = req.getRequestDispatcher("/views/dang-tin.jsp");
		rd.forward(req, resp);
	}
	
	private void hienThiCS(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		long id = Long.parseLong(req.getParameter("id"));
		PostModel post = postDao.getById(id);
		req.setAttribute("post", post);
		req.setAttribute("categories", categoryDao.getCategories());
		req.setAttribute("streets", streetDao.getAll());
		req.setAttribute("photos", photoDao.getByPostId(id));
		RequestDispatcher rd = req.getRequestDispatcher("/views/sua-tin.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getServletPath();
		switch (action) {
		case "/dang-tin":
			themTin(req, resp);
			break;
		case "/sua-tin":
			suaTin(req, resp);
			break;
		}
	}
	
	private void themTin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		PostModel post = FormUtil.toModel(req);
		Long postId = postDao.add(post);
		List<String> photos = UploadFileUtil.uploadFile(req, postId);
		if (photos != null) {
			PhotoModel photoModel = new PhotoModel();
			for (String photo: photos) {
				if (!photo.equals("")) {
					photoModel.setName(photo);
					photoModel.setPostId(postId);
					photoDao.insert(photoModel);
				}
			}
		}
		resp.sendRedirect("/quan-ly-tin");
	}
	
	private void suaTin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		Long id = Long.parseLong(req.getParameter("id"));
		PostModel post = FormUtil.toModel(req);
		post.setId(id);
		postDao.update(post);
		resp.sendRedirect("/quan-ly-tin");
	}
	
	private void xoaTin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		Long id = Long.parseLong(req.getParameter("id"));
		postDao.delete(id);
		resp.sendRedirect("/quan-ly-tin");
	}
}
