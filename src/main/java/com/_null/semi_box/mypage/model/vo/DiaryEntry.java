package com._null.semi_box.mypage.model.vo;

public class DiaryEntry {
    private String productId;
    private String userPk;
    private int productSn;
    private String productName;
    private int productPrice;
    private String productImg;
    private String diary;
    private String fortune;
    
	public DiaryEntry() {
		super();
	}

	public DiaryEntry(String productId, String userPk, int productSn, String productName, int productPrice,
			String productImg, String diary, String fortune) {
		super();
		this.productId = productId;
		this.userPk = userPk;
		this.productSn = productSn;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productImg = productImg;
		this.diary = diary;
		this.fortune = fortune;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getUserPk() {
		return userPk;
	}

	public void setUserPk(String userPk) {
		this.userPk = userPk;
	}

	public int getProductSn() {
		return productSn;
	}

	public void setProductSn(int productSn) {
		this.productSn = productSn;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductImg() {
		return productImg;
	}

	public void setProductImg(String productImg) {
		this.productImg = productImg;
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

	@Override
	public String toString() {
		return "DiaryEntry [productId=" + productId + ", userPk=" + userPk + ", productSn=" + productSn
				+ ", productName=" + productName + ", productPrice=" + productPrice + ", productImg=" + productImg
				+ ", diary=" + diary + ", fortune=" + fortune + "]";
	}

	
}