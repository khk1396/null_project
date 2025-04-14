package com._null.semi_box.mypage.model.vo;

import java.sql.Date;

/**
 * 
 */
public class OrderHistory {
	
	/* 유저 */
	private String userPk;
	private String userName;
	
	
	/* 박스구매  */
	private int    payId;
	private Date   payDate;
	private int	   price;
	private Date   refundDate;
	private String status;
	
	/* 박스쪽  */
	private String boxImg;
	private String boxName;
	
	/* 배송쪽 */
	private int    orderId;
	private String address;
	private Date   startDeliveryDate;
	private String deliveryStatus;
	
	/* 소유한 물건쪽 */
	private String productName;
	private String productImg;
	private String productPrice;
	
	
	public OrderHistory() {
		super();
	}


	public OrderHistory(String userPk, String userName, int payId, Date payDate, int price, Date refundDate, String status,
			String boxImg, String boxName, int orderId, String address, Date startDeliveryDate, String deliveryStatus,
			String productName, String productImg, String productPrice) {
		super();
		this.userPk = userPk;
		this.userName = userName;
		this.payId = payId;
		this.payDate = payDate;
		this.price = price;
		this.refundDate = refundDate;
		this.status = status;
		this.boxImg = boxImg;
		this.boxName = boxName;
		this.orderId = orderId;
		this.address = address;
		this.startDeliveryDate = startDeliveryDate;
		this.deliveryStatus = deliveryStatus;
		this.productName = productName;
		this.productImg = productImg;
		this.productPrice = productPrice;
	}


	public String getUserPk() {
		return userPk;
	}


	public void setUserPk(String userPk) {
		this.userPk = userPk;
	}
	
	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public int getPayId() {
		return payId;
	}


	public void setPayId(int payId) {
		this.payId = payId;
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


	public Date getRefundDate() {
		return refundDate;
	}


	public void setRefundDate(Date refundDate) {
		this.refundDate = refundDate;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
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


	public int getOrderId() {
		return orderId;
	}


	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public Date getStartDeliveryDate() {
		return startDeliveryDate;
	}


	public void setStartDeliveryDate(Date startDeliveryDate) {
		this.startDeliveryDate = startDeliveryDate;
	}


	public String getDeliveryStatus() {
		return deliveryStatus;
	}


	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}


	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}


	public String getProductImg() {
		return productImg;
	}


	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}


	public String getProductPrice() {
		return productPrice;
	}


	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}


	@Override
	public String toString() {
		return "OrderHistory [userPk=" + userPk + "userName=" + userName + ", payId=" + payId + ", payDate=" + payDate + ", price=" + price
				+ ", refundDate=" + refundDate + ", status=" + status + ", boxImg=" + boxImg + ", boxName=" + boxName
				+ ", orderId=" + orderId + ", address=" + address + ", startDeliveryDate=" + startDeliveryDate
				+ ", deliveryStatus=" + deliveryStatus + ", productName=" + productName + ", productImg=" + productImg
				+ ", productPrice=" + productPrice + "]";
	}

	
}
