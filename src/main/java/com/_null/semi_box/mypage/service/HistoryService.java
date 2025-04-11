package com._null.semi_box.mypage.service;

import java.util.ArrayList;

import com._null.semi_box.mypage.common.PageInfo;
import com._null.semi_box.mypage.model.vo.OrderHistory;

public interface HistoryService {

	
	/* 로그인한 회원에 대한 주문내역 조회*/
	ArrayList<OrderHistory> selectUserOrder(PageInfo pi, int id);
	

	/* 로그인한 회원의 구매 내역 수 조회  */
	int selectUserOrder(int id);

	
	/* 로그인한 회원에 대한 주문내역 조회*/
	ArrayList<OrderHistory> selectUserRefund(PageInfo pi, int id);

	/* 로그인한 회원의 환불 내역 조회  */
	int selectUserRefund(int id);
	
	
	/* 로그인한 회원에 대한 배송내역 조회*/
	ArrayList<OrderHistory> selectUserDelivery(PageInfo pi, int id);

	/* 로그인한 회원의 배송 내역 조회  */
	int selectUserDelivery(int id);
	
	
	/* 환불 신청한 상품 상태 변경  */
	int refundChange(OrderHistory orderHistory);

	
}
