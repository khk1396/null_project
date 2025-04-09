package com._null.semi_box.mypage.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.boxopen.common.Template;
import com._null.semi_box.mypage.model.dao.OrderHistoryDao;
import com._null.semi_box.mypage.model.vo.OrderHistory;

public class HistoryServiceImpl implements HistoryService {

	@Override
	public ArrayList<OrderHistory> selectAllOrder(String id) {

		SqlSession session = Template.getSqlSession(); 
		
		ArrayList<OrderHistory> list = (ArrayList<OrderHistory>)OrderHistoryDao.selectAllOrder(session,id);
		
		session.close();
		
		return list;
	}

	@Override
	public int selectByPurchaseHistoryCount() {

		SqlSession session = Template.getSqlSession(); 
		
		
		
		return 0;
	}

	
	
	
	
	
}
