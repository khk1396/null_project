package com._null.semi_box.mypage.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.boxopen.common.Template;
import com._null.semi_box.mypage.common.PageInfo;
import com._null.semi_box.mypage.model.dao.OrderHistoryDao;
import com._null.semi_box.mypage.model.vo.OrderHistory;

public class HistoryServiceImpl implements HistoryService {

	@Override
	public ArrayList<OrderHistory> selectAllOrder(PageInfo pi, String id) {

		SqlSession session = Template.getSqlSession(); 
		
		ArrayList<OrderHistory> list = (ArrayList<OrderHistory>)OrderHistoryDao.selectAllOrder(session,pi, id);
		
		session.close();
		
		return list;
	}

	@Override
	public int selectUserOrder(String id) {

		SqlSession session = Template.getSqlSession(); 
		
		int list = OrderHistoryDao.selectUserOrder(session, id);
		
		session.close();
		
		return list;
	}


	
}
