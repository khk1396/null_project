package com._null.semi_box.main.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.main.model.vo.MainBox;
import com._null.semi_box.main.model.vo.MainProduct;

public class MainBoxDAO {
	public List<MainBox> selectBoxList(SqlSession sqlSession) {
		return sqlSession.selectList("mainMapper.selectBoxList");
	}
	
	public List<MainProduct> selectProductList(SqlSession sqlSession) {
		return sqlSession.selectList("mainMapper.selectProductList");
	}
}
