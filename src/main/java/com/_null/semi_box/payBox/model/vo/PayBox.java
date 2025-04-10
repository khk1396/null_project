package com._null.semi_box.payBox.model.vo;

import java.sql.Date;

public class PayBox {
	private int payId;			//	PAY_ID	NUMBER
	private int userPk; 		//	USER_PK	NUMBER
	private String boxCode; 	//	BOX_CODE	VARCHAR2(10 BYTE)
	private int price; 			//	PRICE	NUMBER
	private String payMethod; 	//	PAY_METHOD	VARCHAR2(15 BYTE)
	private Date payDate; 		//	PAY_DATE	DATE
	private String status; 		//	STATUS	VARCHAR2(8 BYTE)
	
	public PayBox() {}
	
	public void setStatus(String status) {
		this.status  = status;
	}

	public int getPayId() {
		return payId;
	}

	public void setPayId(int payId) {
		this.payId = payId;
	}

	public int getUserPk() {
		return userPk;
	}

	public void setUserPk(int userPk) {
		this.userPk = userPk;
	}

	public String getBoxCode() {
		return boxCode;
	}

	public void setBoxCode(String boxCode) {
		this.boxCode = boxCode;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public String getStatus() {
		return status;
	}

	@Override
	public String toString() {
		return "PayBox [payId=" + payId + ", userPk=" + userPk + ", boxCode=" + boxCode + ", price=" + price
				+ ", payMethod=" + payMethod + ", payDate=" + payDate + ", status=" + status + "]";
	}
	
}
