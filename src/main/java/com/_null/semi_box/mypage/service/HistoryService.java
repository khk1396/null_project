package com._null.semi_box.mypage.service;

import java.util.ArrayList;

import com._null.semi_box.mypage.model.vo.OrderHistory;

public interface HistoryService {

	
	/* 로그인한 회원에 대한 주문내역 조회*/
	ArrayList<OrderHistory> selectAllOrder(String id);

	int selectByPurchaseHistoryCount();
	
	
	/* */
}
