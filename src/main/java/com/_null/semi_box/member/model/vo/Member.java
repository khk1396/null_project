package com._null.semi_box.member.model.vo;

import java.sql.Date;

public class Member {
	private int userPk;              // 회원식별자 (sequence no) 
	private String userId;           // 회원아이디
	private String userName;         // 회원이름 
	private String userPassword;     // 회원비밀번호
	private String userNickName;     // 회원닉네임
	private String address;          // 배송지
	private Date enrollDate;         // 가입일
	private String status;           // 탈퇴유무 ('Y': 탈퇴, 'N': 회원) 
	
	public Member () {};
	
	// 회원 가입시  
	public Member(String userId, String userName, String userPassword, String userNickName, String address) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userNickName = userNickName;
		this.address = address;
	}
	
	// 회원 정보
	public Member(int userPk, String userId, String userName, String userPassword, String userNickName, String address,
			Date enrollDate, String status) {
		super();
		this.userPk = userPk;
		this.userId = userId;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userNickName = userNickName;
		this.address = address;
		this.enrollDate = enrollDate;
		this.status = status;
	}

	public int getUserPk() {
		return userPk;
	}
	public void setUserPk(int userPk) {
		this.userPk = userPk;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserNickName() {
		return userNickName;
	}
	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
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

	@Override
	public String toString() {
		return "Member [userPk=" + userPk + ", userId=" + userId + ", userName=" + userName + ", userPassword="
				+ userPassword + ", userNickName=" + userNickName + ", address=" + address + ", enrollDate="
				+ enrollDate + ", status=" + status + "]";
	}
	
	
}
