package com._null.semi_box.boxopen.model.vo;

import java.sql.Date;

public class BoxOpenProduct {
    private String productId;      // UUID (기본키)
    private String userPk;         // 사용자 ID (외래키)
    private String productSn;      // 상품 일련번호 (외래키)
    private Date getDate;          // 획득 일자 (SYSDATE)
    private String diary;          // 다이어리 내용
    private String fortune;        // GPT로 생성한 운세
    private String status;         // HAVE or TRADE
    
    // 생성자부
	public BoxOpenProduct() {
		super();
	}

	public BoxOpenProduct(String productId, String userPk, String productSn, Date getDate, String diary, String fortune,
			String status) {
		super();
		this.productId = productId;
		this.userPk = userPk;
		this.productSn = productSn;
		this.getDate = getDate;
		this.diary = diary;
		this.fortune = fortune;
		this.status = status;
	}

	// getter * setter
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

	public String getProductSn() {
		return productSn;
	}

	public void setProductSn(String productSn) {
		this.productSn = productSn;
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

	// string
	@Override
	public String toString() {
		return "BoxOpenProduct [productId=" + productId + ", userPk=" + userPk + ", productSn=" + productSn
				+ ", getDate=" + getDate + ", diary=" + diary + ", fortune=" + fortune + ", status=" + status + "]";
	}

    
}
