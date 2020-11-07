package com.javaweb.util;

import javax.servlet.http.HttpServletRequest;

public class Session {

	private static Session instance = null;
	
	private Session() {
		
	}
	
	public static Session getInstance() {
		if (instance == null) {
			instance = new Session();
		}
		return instance;
	}
	
	public void putSession(HttpServletRequest req, String key, Object value) {
		req.getSession().setAttribute(key, value);
	}
	
	public Object getSession(HttpServletRequest req, String key) {
		return req.getSession().getAttribute(key);
	}
	
	public void removeSession(HttpServletRequest req, String key) {
		req.getSession().removeAttribute(key);
	}
}
