package com._null.semi_box.mypage.model.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.mypage.common.PageInfo;
import com._null.semi_box.mypage.model.vo.OrderHistory;

public class OrderHistoryDao {

	/* 로그인한 회원에 대한 주문내역 조회*/
	public static List<OrderHistory> selectUserOrder(SqlSession session, PageInfo pi, int id) {
		
		int offset = (pi.getCurrPage() -1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());

		return session.selectList("orderHistoryMapper.selectAllOrder", id, rb);
	}

	/* 로그인한 회원의 구매 내역 수 조회  */
	public static int selectUserOrder(SqlSession session, int id) {
		
		return session.selectOne("orderHistoryMapper.selectUserOrder", id);
	}

	
	/* 로그인한 회원에 대한 주문내역 조회*/		
	public static List<OrderHistory> selectUserRefund(SqlSession session, PageInfo pi, int id) {
		
		int offset = (pi.getCurrPage() -1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());

		return session.selectList("orderHistoryMapper.selectUserAllRefund", id, rb);
	}

	/* 로그인한 회원의 환불 내역 조회  */
	public static int selectUserRefund(SqlSession session, int id) {
		
		return session.selectOne("orderHistoryMapper.selectUserRefund", id);
	}
	
	
	/* 로그인한 회원에 대한 배송 내역 조회*/		
	public static List<OrderHistory> selectUserDelivery(SqlSession session, PageInfo pi, int id) {
		
		int offset = (pi.getCurrPage() -1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());

		return session.selectList("orderHistoryMapper.selectUserAllDelivery", id, rb);
	}

	/* 로그인한 회원의 배송 내역 조회  */
	public static int selectUserDelivery(SqlSession session, int id) {
		
		return session.selectOne("orderHistoryMapper.selectUserDelivery", id);
	}

	/* 환불 신청한 상품 상태 변경 */
/*
	public static int refundChange(SqlSession session, OrderHistory orderHistory) {
		
		 return session.update("orderHistoryMapper.refundChange", orderHistory );
	}
	*/

	
	public static int refundChange(SqlSession session, OrderHistory orderHistory) {
		 
		return session.update("orderHistoryMapper.refundChange", orderHistory );
	}
	
}
