package com._null.semi_box.delivery.service;

import com._null.semi_box.mypage.model.vo.OrderHistory;

public interface DeliveryService {

	
	/* 배송 신청 C*/
	int deliveryApplication(String productId, String address);

	/* 배송정보 조회  */
	OrderHistory selectDeliveryInfo(int userPk, String productId);
	
	
}
