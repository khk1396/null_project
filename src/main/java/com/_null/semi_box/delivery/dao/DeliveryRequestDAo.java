package com._null.semi_box.delivery.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.mypage.model.vo.OrderHistory;

public class DeliveryRequestDAo {


	public static int deliveryApplication(SqlSession sqlSession, HashMap k) {

		return sqlSession.insert("deliveryMapper.deliveryApplication", k);
	}

	public static OrderHistory selectDeliveryInfo(SqlSession sqlSession, HashMap k) {

		return sqlSession.selectOne("deliveryMapper.selectDeliveryInfo", k);
	}

	
	
}
