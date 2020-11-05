package com.javaweb.model;

import java.sql.Timestamp;
import java.util.List;

public class PostModel {

	private long id;
	private String title;
	private String apartmentNumber;
	private float acreage;
	private long price;
	private String description;
	private String contactName;
	private String phoneNumber;
	private String address;
	private Timestamp createdDate;
	private long userId;
	private int categoryId;
	private String streetId;
	private List<String> photos;
	
	public List<String> getPhotos() {
		return photos;
	}
	public void setPhotos(List<String> photos) {
		this.photos = photos;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getApartmentNumber() {
		return apartmentNumber;
	}
	public void setApartmentNumber(String apartmentNumber) {
		this.apartmentNumber = apartmentNumber;
	}

	public float getAcreage() {
		return acreage;
	}
	public void setAcreage(float acreage) {
		this.acreage = acreage;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getContactName() {
		return contactName;
	}
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Timestamp getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
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
}
