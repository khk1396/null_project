package com._null.semi_box.mypage.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.mypage.model.vo.MyProduct;

public class MyProductDAO {
	public List<MyProduct> selectMyProductList(SqlSession sqlSession, String userPk) {
		return sqlSession.selectList("myProductMapper.selectMyProductList", userPk);
	}
}
