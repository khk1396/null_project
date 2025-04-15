package com._null.semi_box.payBox.model.vo;

import java.sql.Date;

public class PayBox {
	
	//	payId=0, userPk=0, boxCode=null, price=98000, payMethod=null, payDate=null, status=REFUND
	
	private int payId;			//	PAY_ID	NUMBER
	private int userPk; 		//	USER_PK	NUMBER
	private String boxCode; 	//	BOX_CODE	VARCHAR2(10 BYTE)
	private int price; 			//	PRICE	NUMBER
	private String payMethod; 	//	PAY_METHOD	VARCHAR2(15 BYTE)
	private Date payDate; 		//	PAY_DATE	DATE
	private Date refundDate;	//  REFUND DATE
	private String status; 		//	STATUS	VARCHAR2(8 BYTE)
	
	/* BOX_IMG 테이블 정보 */
	private String boxImg; 		// BOX_IMG VARCHAR2()
	
	public PayBox() {}
	

	public PayBox(int payId, int userPk, String boxCode, int price, String payMethod, Date payDate, Date refundDate,
			String status, String boxImg) {
		super();
		this.payId = payId;
		this.userPk = userPk;
		this.boxCode = boxCode;
		this.price = price;
		this.payMethod = payMethod;
		this.payDate = payDate;
		this.refundDate = refundDate;
		this.status = status;
		this.boxImg = boxImg;
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

	public Date getRefundDate() {
		return refundDate;
	}

	public void setRefundDate(Date refundDate) {
		this.refundDate = refundDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}


	public String getBoxImg() {
		return boxImg;
	}


	public void setBoxImg(String boxImg) {
		this.boxImg = boxImg;
	}


	@Override
	public String toString() {
		return "PayBox [payId=" + payId + ", userPk=" + userPk + ", boxCode=" + boxCode + ", price=" + price
				+ ", payMethod=" + payMethod + ", payDate=" + payDate + ", status=" + status + "]";
	}
	
}
