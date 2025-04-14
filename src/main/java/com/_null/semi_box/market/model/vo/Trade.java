package com._null.semi_box.market.model.vo;

import java.sql.Date;

public class Trade {
	private String myProductId;
	private String myProductImg;
	private String myProductName;
	private String myProductPrice;
	private int myProductUserPk;
	private String myComment;
	
	private String otherProductId;
	private String otherProductImg;
	private String otherProductName;
	private String otherProductPrice;
	private int otherProductUserPk;
	private String otherComment;
	private Date tradeDate;
	
	


	public String getOtherComment() {
		return otherComment;
	}


	public void setOtherComment(String otherComment) {
		this.otherComment = otherComment;
	}


	
	public Trade() {
		super();
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


	public int getMyProductUserPk() {
		return myProductUserPk;
	}


	public void setMyProductUserPk(int myProductUserPk) {
		this.myProductUserPk = myProductUserPk;
	}


	public int getOtherProductUserPk() {
		return otherProductUserPk;
	}


	public void setOtherProductUserPk(int otherProductUserPk) {
		this.otherProductUserPk = otherProductUserPk;
	}


	public Date getTradeDate() {
		return tradeDate;
	}


	public void setTradeDate(Date tradeDate) {
		this.tradeDate = tradeDate;
	}
	
	
	
	
}
