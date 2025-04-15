package com._null.semi_box.shop.model.vo;

public class SemiBoxVo {
	// 박스의 DB 정보를 입력
	private String boxCode; 	 //	BOX_CODE	VARCHAR2(10 BYTE)
	private String boxImgCode; 	 //	BOX_IMG_CODE	CHAR(15 BYTE)
	private int boxPrice;		 //	BOX_PRICE	NUMBER
	private String boxName;		 //	BOX_NAME	VARCHAR2(30 BYTE)
	
	// 기본생성자
	public SemiBoxVo() { }

	// 매개변수 생성자
	public SemiBoxVo(String boxCode, String boxImgCode, int boxPrice, String boxName) {
		super();
		this.boxCode = boxCode;
		this.boxImgCode = boxImgCode;
		this.boxPrice = boxPrice;
		this.boxName = boxName;
	}

	// getter.setter 생성
	public String getBoxCode() {
		return boxCode;
	}

	public void setBoxCode(String boxCode) {
		this.boxCode = boxCode;
	}

	public String getBoxImgCode() {
		return boxImgCode;
	}

	public void setBoxImgCode(String boxImgCode) {
		this.boxImgCode = boxImgCode;
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

	// tostring 생성
	@Override
	public String toString() {
		return "SemiBox [boxCode=" + boxCode + ", boxImgCode=" + boxImgCode + ", boxPrice=" + boxPrice + ", boxName="
				+ boxName + "]";
	}	
}
