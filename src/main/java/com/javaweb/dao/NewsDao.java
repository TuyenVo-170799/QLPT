package com.javaweb.dao;

import java.util.List;

import com.javaweb.model.NewsModel;

public interface NewsDao {

	public int add(NewsModel news);
	public void update(NewsModel news);
	public void delete(long id);
	public NewsModel getNews(long id);
	public List<NewsModel> getListNews();
}
