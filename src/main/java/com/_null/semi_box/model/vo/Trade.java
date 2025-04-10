package com._null.semi_box.model.vo;

import java.sql.Date;

public class Trade {
	private String myProductId;
	private String myProductImg;
	private String myProductName;
	private String myProductPrice;
	private String myProductUserPk;
	private String myComment;
	
	private String otherProductId;
	private String otherProductImg;
	private String otherProductName;
	private String otherProductPrice;
	private String otherProductUserPk;
	private String otherComment;
	private Date tradeDate;
	
	
	public String getOtherComment() {
		return otherComment;
	}


	public void setOtherComment(String otherComment) {
		this.otherComment = otherComment;
	}


	
	public String getMyProductUserPk() {
		return myProductUserPk;
	}


	public void setMyProductUserPk(String myProductUserPk) {
		this.myProductUserPk = myProductUserPk;
	}


	public String getOtherProductUserPk() {
		return otherProductUserPk;
	}


	public void setOtherProductUserPk(String otherProductUserPk) {
		this.otherProductUserPk = otherProductUserPk;
	}
	
	public Trade() {
		super();
	}


	public Trade(String myProductId, String myProductImg, String myProductName, String myProductPrice, String myComment,
			String otherProductId, String otherProductImg, String otherProductName, String otherProductPrice,
			Date tradeDate) {
		super();
		this.myProductId = myProductId;
		this.myProductImg = myProductImg;
		this.myProductName = myProductName;
		this.myProductPrice = myProductPrice;
		this.myComment = myComment;
		this.otherProductId = otherProductId;
		this.otherProductImg = otherProductImg;
		this.otherProductName = otherProductName;
		this.otherProductPrice = otherProductPrice;
		this.tradeDate = tradeDate;
	}
	
	


	@Override
	public String toString() {
		return "Trade [myProductId=" + myProductId + ", myProductImg=" + myProductImg + ", myProductName="
				+ myProductName + ", myProductPrice=" + myProductPrice + ", myProductUserPk=" + myProductUserPk
				+ ", myComment=" + myComment + ", otherProductId=" + otherProductId + ", otherProductImg="
				+ otherProductImg + ", otherProductName=" + otherProductName + ", otherProductPrice="
				+ otherProductPrice + ", otherProductUserPk=" + otherProductUserPk + ", otherComment=" + otherComment
				+ ", tradeDate=" + tradeDate + "]";
	}


	public String getMyProductId() {
		return myProductId;
	}


	public void setMyProductId(String myProductId) {
		this.myProductId = myProductId;
	}


	public String getMyProductImg() {
		return myProductImg;
	}


	public void setMyProductImg(String myProductImg) {
		this.myProductImg = myProductImg;
	}


	public String getMyProductName() {
		return myProductName;
	}


	public void setMyProductName(String myProductName) {
		this.myProductName = myProductName;
	}


	public String getMyProductPrice() {
		return myProductPrice;
	}


	public void setMyProductPrice(String myProductPrice) {
		this.myProductPrice = myProductPrice;
	}


	public String getMyComment() {
		return myComment;
	}


	public void setMyComment(String myComment) {
		this.myComment = myComment;
	}


	public String getOtherProductId() {
		return otherProductId;
	}


	public void setOtherProductId(String otherProductId) {
		this.otherProductId = otherProductId;
	}


	public String getOtherProductImg() {
		return otherProductImg;
	}


	public void setOtherProductImg(String otherProductImg) {
		this.otherProductImg = otherProductImg;
	}


	public String getOtherProductName() {
		return otherProductName;
	}


	public void setOtherProductName(String otherProductName) {
		this.otherProductName = otherProductName;
	}


	public String getOtherProductPrice() {
		return otherProductPrice;
	}


	public void setOtherProductPrice(String otherProductPrice) {
		this.otherProductPrice = otherProductPrice;
	}


	public Date getTradeDate() {
		return tradeDate;
	}


	public void setTradeDate(Date tradeDate) {
		this.tradeDate = tradeDate;
	}
	
	
	
	
}
