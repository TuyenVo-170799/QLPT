package com.javaweb.model;

public class SearchModel {
	
	private int categoryId;
	private String streetId;
	private long price;
	private float acreage;
	
	public SearchModel(int categoryId, String streetId, long price, float acreage) {
		super();
		this.categoryId = categoryId;
		this.streetId = streetId;
		this.price = price;
		this.acreage = acreage;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getStreetId() {
		return streetId;
	}
	public void setStreetId(String streetId) {
		this.streetId = streetId;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	public float getAcreage() {
		return acreage;
	}
	public void setAcreage(float acreage) {
		this.acreage = acreage;
	}

}
