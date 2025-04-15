package com._null.semi_box.main.model.vo;

public class MainProduct {
	private int productSn; 				//	PRODUCT_SN	NUMBER
	private String boxCode; 			//	BOX_CODE	VARCHAR2(10 BYTE)
	private String productName; 		//	PRODUCT_NAME	VARCHAR2(30 BYTE)
	private String productDescription; 	//	PRODUCT_DESCRIPTION	VARCHAR2(300 BYTE)
	private int productPrice; 			//	PRODUCT_PRICE	NUMBER
	private String productImg; 			//	PRODUCT_IMG	VARCHAR2(300 BYTE)
	
	
	public MainProduct() {}
	
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
		return "MainProduct [productSn=" + productSn + ", boxCode=" + boxCode + ", productName=" + productName
				+ ", productDescription=" + productDescription + ", productPrice=" + productPrice + ", productImg="
				+ productImg + "]";
	}
}
