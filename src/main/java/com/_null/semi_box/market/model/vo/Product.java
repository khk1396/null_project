package com._null.semi_box.market.model.vo;

import java.sql.Date;

public class Product {

	private String productId;
	private int userPk;
	private Date getDate;
	private String diary;
	private String fortune;
	private String status;
	private String boxCode;
	private String productName;
	private String productDescription;
	private String productPrice;
	private String productImg;
	private int tradeId;
	private String registComment;
	
	private String otherProductId;
	
	
	public String getOtherProductId() {
		return otherProductId;
	}

	public void setOtherProductId(String otherProductId) {
		this.otherProductId = otherProductId;
	}

	public int getTradeId() {
		return tradeId;
	}

	public void setTradeId(int tradeId) {
		this.tradeId = tradeId;
	}

	public String getRegistComment() {
		return registComment;
	}

	public void setRegistComment(String registComment) {
		this.registComment = registComment;
	}


	@Override
	public String toString() {
		return "Product [productId=" + productId + ", userPk=" + userPk + ", getDate=" + getDate + ", diary=" + diary
				+ ", fortune=" + fortune + ", status=" + status + ", boxCode=" + boxCode + ", productName="
				+ productName + ", productDescription=" + productDescription + ", productPrice=" + productPrice
				+ ", productImg=" + productImg + ", tradeId=" + tradeId + ", registComment=" + registComment
				+ ", otherProductId=" + otherProductId + "]\n";
	}

	public Product() {
		super();
		
		
	}
	
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public int getUserPk() {
		return userPk;
	}

	public void setUserPk(int userPk) {
		this.userPk = userPk;
	}

	public Product(String productId, int userPk, Date getDate, String diary, String fortune, String status,
			String boxCode, String productName, String productDescription, String productPrice, String productImg,
			int tradeId, String registComment, String otherProductId) {
		super();
		this.productId = productId;
		this.userPk = userPk;
		this.getDate = getDate;
		this.diary = diary;
		this.fortune = fortune;
		this.status = status;
		this.boxCode = boxCode;
		this.productName = productName;
		this.productDescription = productDescription;
		this.productPrice = productPrice;
		this.productImg = productImg;
		this.tradeId = tradeId;
		this.registComment = registComment;
		this.otherProductId = otherProductId;
	}

	public Date getGetDate() {
		return getDate;
	}
	public void setGetDate(Date getDate) {
		this.getDate = getDate;
	}
	public String getDiary() {
		return diary;
	}
	public void setDiary(String diary) {
		this.diary = diary;
	}
	public String getFortune() {
		return fortune;
	}
	public void setFortune(String fortune) {
		this.fortune = fortune;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getBoxCode() {
		return boxCode;
	}
	public void setBoxCode(String boxCode) {
		this.boxCode = boxCode;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductImg() {
		return productImg;
	}
	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}
	
	
	
	
}
