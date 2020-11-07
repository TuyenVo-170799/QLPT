package com.javaweb.servlet;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaweb.dao.UserDao;
import com.javaweb.model.UserModel;
import com.javaweb.util.Session;

@WebServlet(value = {"/dang-nhap", "/dang-ky", "/dang-xuat"})
public class DangNhapServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Inject
	private UserDao userDao;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getServletPath();
		switch (action) {
		case "/dang-nhap":
			hienThiDN(req, resp);
			break;
		case "/dang-ky":
			hienThiDK(req, resp);
			break;
		case "/dang-xuat":
			dangXuat(req, resp);
			break;
		}
	}
	
	private void hienThiDN(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("dest", req.getParameter("dest"));
		RequestDispatcher rd = req.getRequestDispatcher("/views/dang-nhap.jsp");
		rd.forward(req, resp);
	}
	
	private void hienThiDK(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("/views/dang-ky.jsp");
		rd.forward(req, resp);
	}
	
	private void dangXuat(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Session.getInstance().removeSession(req, "USER");
		resp.sendRedirect("/trang-chu");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action =req.getServletPath();
		switch (action) {
		case "/dang-nhap":
			dangNhap(req, resp);
			break;
		case "/dang-ky":
			dangKy(req, resp);
			break;
		}
		
	}
	
	private void dangNhap(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("userName");
		String password = req.getParameter("password");
		UserModel user = userDao.getByUserNameAndPassword(userName, password, userName);
		if (user != null) {
			Session.getInstance().putSession(req, "USER", user);
			if (req.getParameter("dest").equals("/dang-tin")) {
				resp.sendRedirect("/dang-tin");
			} else {
				resp.sendRedirect("/quan-ly-tin");
			}
		} else {
			resp.sendRedirect("/dang-nhap?dest=" + req.getParameter("dest"));
		}
	}
	
	private void dangKy(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String userName = req.getParameter("userName");
		String password = req.getParameter("password");
		String fullName = req.getParameter("fullName");
		String phoneNumber = req.getParameter("phoneNumber");
		if (userDao.checkUserNameOrPhone(userName, phoneNumber)) {
			resp.sendRedirect("/dang-ky?error=Tên đăng nhập hoặc số điện thoại đã được đăng ký");
		} else {
			UserModel user = new UserModel(userName, password, fullName, phoneNumber, 2);
			userDao.add(user);
			resp.sendRedirect("/dang-nhap?dest=/quan-ly-tin");
		}
	}
}
