package com._null.semi_box.mypage.service;

import java.util.ArrayList;

import com._null.semi_box.mypage.common.PageInfo;
import com._null.semi_box.mypage.model.vo.OrderHistory;

public interface HistoryService {

	
	/* 로그인한 회원에 대한 주문내역 조회*/
//	ArrayList<OrderHistory> selectAllOrder(String id);
	ArrayList<OrderHistory> selectAllOrder(PageInfo pi, String id);
	

	/* 로그인한 회원의 구매 내역 전체 수 조회  */
	int selectUserOrder(String id);
	
	
	
}
