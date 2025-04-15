package com._null.semi_box.shop.model.vo;

public class SemiProduct {
	public String productImg;
	public String productDescription;
	public int productPrice;
	
	public SemiProduct() {
		
	}

	public SemiProduct(String productImg, String productDescription, int productPrice) {
		super();
		this.productImg = productImg;
		this.productDescription = productDescription;
		this.productPrice = productPrice;
	}

	public String getProductImg() {
		return productImg;
	}

	public void setProductImg(String productImg) {
		this.productImg = productImg;
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

	@Override
	public String toString() {
		return "SemiProduct [productImg=" + productImg + ", productDescription=" + productDescription
				+ ", productPrice=" + productPrice + "]";
	}
	
}
