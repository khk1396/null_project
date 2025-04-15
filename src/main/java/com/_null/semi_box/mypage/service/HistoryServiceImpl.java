package com._null.semi_box.mypage.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.boxopen.common.Template;
import com._null.semi_box.mypage.common.PageInfo;
import com._null.semi_box.mypage.model.dao.OrderHistoryDao;
import com._null.semi_box.mypage.model.vo.OrderHistory;

public class HistoryServiceImpl implements HistoryService {

	
	/* 로그인한 회원에 대한 주문내역 조회*/
	@Override
	public ArrayList<OrderHistory> selectUserOrder(PageInfo pi, int id) {

		SqlSession session = Template.getSqlSession(); 
		
		ArrayList<OrderHistory> list = (ArrayList<OrderHistory>)OrderHistoryDao.selectUserOrder(session, pi, id);
		
		session.close();
		
		return list;
	}
	
	/* 로그인한 회원의 구매 내역 수 조회  */
	@Override
	public int selectUserOrder(int id) {

		SqlSession session = Template.getSqlSession(); 
		
		int list = OrderHistoryDao.selectUserOrder(session, id);
		
		session.close();
		
		return list;
	}

	
	/* 로그인한 회원의 환불 내역 조회  */
	@Override
	public int selectUserRefund(int id) {
		SqlSession session = Template.getSqlSession(); 
		
		int list = OrderHistoryDao.selectUserRefund(session, id);
		
		if (list > 0) {
			session.commit();
		}
		
		session.close();
		
		return list;
	}
	
	/* 로그인한 회원에 대한 환불 내역 조회*/		
	@Override
	public ArrayList<OrderHistory> selectUserRefund(PageInfo pi, int id) {
		SqlSession session = Template.getSqlSession(); 
		
		ArrayList<OrderHistory> list = (ArrayList<OrderHistory>)OrderHistoryDao.selectUserRefund(session, pi, id);
		
		session.close();
		
		return list;
	}

	/* 로그인한 회원에 대한 배송 내역 조회*/		
	@Override
	public ArrayList<OrderHistory> selectUserDelivery(PageInfo pi, int id) {
		SqlSession session = Template.getSqlSession(); 
		
		ArrayList<OrderHistory> list = (ArrayList<OrderHistory>)OrderHistoryDao.selectUserDelivery(session, pi, id);
		
		session.close();
		
		return list;
	}

	/* 로그인한 회원의 배송 내역 조회  */
	@Override
	public int selectUserDelivery(int id) {
		SqlSession session = Template.getSqlSession(); 
		
		int list = OrderHistoryDao.selectUserDelivery(session, id);
		
		session.close();
		
		return list;
	}

	/* 환불 신청한 상품 상태 변경 */

	@Override
	public int refundChange(OrderHistory orderHistory) {
		SqlSession session = Template.getSqlSession(); 
		
		
		int result = OrderHistoryDao.refundChange(session, orderHistory);
		
		if (result > 0) session.commit();
		
		session.close();
		
		return result;
	}



	
	
	
}
