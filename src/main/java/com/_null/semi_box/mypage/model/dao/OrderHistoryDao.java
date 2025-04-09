package com._null.semi_box.mypage.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.mypage.model.vo.OrderHistory;

public class OrderHistoryDao {

	public static List<OrderHistory> selectAllOrder(SqlSession session, String id) {

		return session.selectList("orderHistoryMapper.selectAllOrder", id);
	}

	
	
}
