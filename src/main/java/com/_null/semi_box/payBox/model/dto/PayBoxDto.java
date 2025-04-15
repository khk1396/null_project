package com._null.semi_box.payBox.model.dto;

import java.sql.Date;

import com._null.semi_box.payBox.model.vo.PayBox;

public class PayBoxDto extends PayBox {
	private String boxName;
	
	

	public PayBoxDto() {
	}

	public PayBoxDto(int payId, int userPk, String boxCode, int price, String payMethod, Date payDate, Date refundDate,
			String status, String boxImg, String boxName) {
		super(payId, userPk, boxCode, price, payMethod, payDate, refundDate, status, boxImg);
		this.boxName = boxName;
	}

	public String getBoxName() {
		return boxName;
	}

	public void setBoxName(String boxName) {
		this.boxName = boxName;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString() + ", boxName=" + this.boxName;
	}

	
}
