package com._null.semi_box.mypage.model.vo;

import java.sql.Date;

public class OrderHistory {
	
	private String userPk;
	private String boxImg;
	private String boxName;
	private Date   payDate;
	private int	   price;
	private String status;
	
	
	
	public OrderHistory() {
		super();
	}



	public OrderHistory(String userPk, String boxImg, String boxName, Date payDate, int price, String status) {
		super();
		this.userPk = userPk;
		this.boxImg = boxImg;
		this.boxName = boxName;
		this.payDate = payDate;
		this.price = price;
		this.status = status;
	}



	public String getUserPk() {
		return userPk;
	}



	public void setUserPk(String userPk) {
		this.userPk = userPk;
	}



	public String getBoxImg() {
		return boxImg;
	}



	public void setBoxImg(String boxImg) {
		this.boxImg = boxImg;
	}



	public String getBoxName() {
		return boxName;
	}



	public void setBoxName(String boxName) {
		this.boxName = boxName;
	}



	public Date getPayDate() {
		return payDate;
	}



	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}



	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	@Override
	public String toString() {
		return "OrderHistory [userPk=" + userPk + ", boxImg=" + boxImg + ", boxName=" + boxName + ", payDate=" + payDate
				+ ", price=" + price + ", status=" + status + "]";
	}
	
	
	
	
	
}
