package com._null.semi_box.shop.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.common.SqlSessionTemplate;
import com._null.semi_box.shop.model.dao.ProductDao;
import com._null.semi_box.shop.model.vo.SemiProduct;

public class ProductService {
	// 컨트롤러에서 boxCode 정보를 가져오기
	public ArrayList<SemiProduct> productList(String boxCode) {

		// sqlSession 자료를 서비스에서 생성하기
		// SqlSessionTemplate으로 DB를 읽어들일 sqlSession을 생성하기
		SqlSession sqlSession = SqlSessionTemplate.getSqlSession();
		
		// DAO로 sqlSession와 boxCode를 전달하고 ArrayList를 담을 변수를 선언
		// ArrayList로 SemiProduct에 들어갈 값을 입력받기
		ArrayList<SemiProduct> productList = (ArrayList<SemiProduct>)new ProductDao().getProductList(sqlSession, boxCode);
		
		// ArrayList로 SemiProduct 반환
		return productList;
	}
}
