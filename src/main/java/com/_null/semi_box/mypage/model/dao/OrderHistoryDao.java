package com._null.semi_box.mypage.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.mypage.common.PageInfo;
import com._null.semi_box.mypage.model.vo.OrderHistory;

public class OrderHistoryDao {

	public static List<OrderHistory> selectAllOrder(SqlSession session, PageInfo pi, String id) {
		
		int offset = (pi.getCurrPage() -1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());

		return session.selectList("orderHistoryMapper.selectAllOrder", id, rb);
	}

	public static int selectUserOrder(SqlSession session, String id) {
		
		return session.selectOne("orderHistoryMapper.selectUserOrder", id);
	}

	
	
}
