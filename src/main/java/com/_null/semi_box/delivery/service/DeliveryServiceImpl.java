package com._null.semi_box.delivery.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.boxopen.common.Template;
import com._null.semi_box.delivery.dao.DeliveryRequestDAo;
import com._null.semi_box.mypage.model.vo.OrderHistory;

public class DeliveryServiceImpl implements DeliveryService {

	@Override
	public int deliveryApplication(int productId, String address) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		HashMap k = new HashMap();
		k.put("productId", productId);
		k.put("address", address);
		
		int result = DeliveryRequestDAo.deliveryApplication(sqlSession, k);
		
		if (result > 0) {
			sqlSession.commit();
		}
		
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public OrderHistory selectDeliveryInfo(int userPk, int productId) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		HashMap k = new HashMap();
		k.put("userPk", userPk);
		k.put("productId", productId);
		
		return  DeliveryRequestDAo.selectDeliveryInfo(sqlSession, k );


	}
	
	
	

	
}
