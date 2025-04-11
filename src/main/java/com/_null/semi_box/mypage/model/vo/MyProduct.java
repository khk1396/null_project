package com._null.semi_box.mypage.model.vo;

import java.sql.Date;

public class MyProduct {
	/* FIELD */ 
	private int productSn; 				// PRODUCT_SN          NUMBER PRIMARY KEY,
	private String boxCode; 			// BOX_CODE            VARCHAR2(10) NOT NULL,
	private String productName; 		// PRODUCT_NAME        VARCHAR2(30),
	private String productDescription; 	// PRODUCT_DESCRIPTION VARCHAR2(300),
	private int productPrice; 			// PRODUCT_PRICE       INT NOT NULL,
	private String productImg; 			// PRODUCT_IMG         VARCHAR2(300)
	
	/* CONSTRUCTOR */
	public MyProduct() {}
	
	/* METHOD */

	public int getProductSn() {
		return productSn;
	}

	public void setProductSn(int productSn) {
		this.productSn = productSn;
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

	@Override
	public String toString() {
		return "MyProduct [productSn=" + productSn + ", boxCode=" + boxCode + ", productName=" + productName
				+ ", productDescription=" + productDescription + ", productPrice=" + productPrice + ", productImg="
				+ productImg + "]";
	}
}
