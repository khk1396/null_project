package com._null.semi_box.main.model.vo;

public class MainBox {
	private String boxCode; //	BOX_CODE	VARCHAR2(10 BYTE)
	private String boxImg; 	//	BOX_IMG_CODE	CHAR(3 BYTE) 
	private int boxPrice; 	//	BOX_PRICE	NUMBER
	private String boxName; //	BOX_NAME	VARCHAR2(30 BYTE)
	
	public MainBox() {}
	
	public String getBoxCode() {
		return boxCode;
	}
	public void setBoxCode(String boxCode) {
		this.boxCode = boxCode;
	}
	public String getBoxImg() {
		return boxImg;
	}
	public void setBoxImg(String boxImg) {
		this.boxImg = boxImg;
	}
	public int getBoxPrice() {
		return boxPrice;
	}
	public void setBoxPrice(int boxPrice) {
		this.boxPrice = boxPrice;
	}
	public String getBoxName() {
		return boxName;
	}
	public void setBoxName(String boxName) {
		this.boxName = boxName;
	}
	@Override
	public String toString() {
		return "MainBoxDAO [boxCode=" + boxCode + ", boxImg=" + boxImg + ", boxPrice=" + boxPrice + ", boxName="
				+ boxName + "]";
	}
}
