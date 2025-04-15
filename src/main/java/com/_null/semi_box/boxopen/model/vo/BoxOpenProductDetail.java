package com._null.semi_box.boxopen.model.vo;

public class BoxOpenProductDetail {
    private String productSn;         // 상품 일련번호 (기본키)
    private String boxCode;           // 박스 코드
    private String productName;       // 상품명
    private String productDescription;// 상품 설명
    private int productPrice;         // 상품 가격
    private String productImg;        // 이미지 경로
    
    
    // 생성자부
	public BoxOpenProductDetail() {}

	public BoxOpenProductDetail(String productSn, String boxCode, String productName, String productDescription,
			int productPrice, String productImg) {
		super();
		this.productSn = productSn;
		this.boxCode = boxCode;
		this.productName = productName;
		this.productDescription = productDescription;
		this.productPrice = productPrice;
		this.productImg = productImg;
	}

	// getter * setter
	public String getProductSn() {
		return productSn;
	}

	public void setProductSn(String productSn) {
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

	// string
	@Override
	public String toString() {
		return "BoxOpenProductDetail [productSn=" + productSn + ", boxCode=" + boxCode + ", productName=" + productName
				+ ", productDescription=" + productDescription + ", productPrice=" + productPrice + ", productImg="
				+ productImg + "]";
	}

    
}

