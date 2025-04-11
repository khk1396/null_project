package com._null.semi_box.mypage.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.boxopen.common.Template;
import com._null.semi_box.mypage.model.dao.MyProductDAO;
import com._null.semi_box.mypage.model.vo.MyProduct;

public class MyProductServiceImpl implements MyProductService {
	private static MyProductDAO myProductDAO = new MyProductDAO();
	
	public ArrayList<MyProduct> selectMyProductList(int userPk) {
		SqlSession sqlSession = Template.getSqlSession();
		
		return (ArrayList<MyProduct>)myProductDAO.selectMyProductList(sqlSession, String.valueOf(userPk));
	}
}
