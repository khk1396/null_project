package com._null.semi_box.shop.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.shop.model.vo.SemiProduct;

public class ProductDao {
	// VO객체를 ArrayList<SemiProduct>의 자료형으로 담아서 ProductService로 전달하기
	// 서비스에서 전달받은 SqlSession, boxCode를 가지고 vo정보를 DB에서 조회
	public List<SemiProduct> getProductList(SqlSession sqlSession, String boxCode) {
		
		// sqlSession, boxCode를 이용해 DB정보를 조회하기
		return sqlSession.selectList("semiProductMapper.getProductList", boxCode);
		
	}
	

}
