package com.javaweb.model;

public class UserModel {

	private long id;
	private String userName;
	private String password;
	private String fullName;
	private String phoneNumber;
	private int roleId;
	
	public UserModel() {
		super();
	}
	public UserModel(String userName, String password, String fullName, String phoneNumber, int roleId) {
		super();
		this.userName = userName;
		this.password = password;
		this.fullName = fullName;
		this.phoneNumber = phoneNumber;
		this.roleId = roleId;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	
}
