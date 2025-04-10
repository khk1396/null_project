package com._null.semi_box.model.vo;

import java.sql.Date;

public class Member {
	private String userPk;
	private String userId;
	private String userPassword;
	private String userName;
	private String userNickname;
	private String address;
	private Date enrollDate;
	private String status;
	
	
	
	@Override
	public String toString() {
		return "Member [userPk=" + userPk + ", userId=" + userId + ", userPassword=" + userPassword + ", userName="
				+ userName + ", userNickname=" + userNickname + ", address=" + address + ", enrollDate=" + enrollDate
				+ ", status=" + status + "]";
	}
	public String getUserPk() {
		return userPk;
	}
	public void setUserPk(String userPk) {
		this.userPk = userPk;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Member(String userPk, String userId, String userPassword, String userName, String userNickname,
			String address, Date enrollDate, String status) {
		super();
		this.userPk = userPk;
		this.userId = userId;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userNickname = userNickname;
		this.address = address;
		this.enrollDate = enrollDate;
		this.status = status;
	}
	
	
	
}
