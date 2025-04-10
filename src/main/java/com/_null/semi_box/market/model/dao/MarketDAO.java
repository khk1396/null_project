package com._null.semi_box.market.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.model.vo.Member;
import com._null.semi_box.model.vo.Product;
import com._null.semi_box.model.vo.Trade;

public class MarketDAO {
	public List<Product> selectAllProducts(SqlSession sqlSession, Member loginUser){
		return sqlSession.selectList("marketMapper.selectAllProducts", loginUser);
	}

	public List<Product> selectMyAllProducts(SqlSession sqlSession, Member loginUser) {
		return sqlSession.selectList("marketMapper.selectMyAllProducts", loginUser);
	}

	public int insertTradeRegist(SqlSession sqlSession, Product product) {
		return sqlSession.insert("marketMapper.insertTradeRegist", product);
		
	}

	public List<Product> selectMyRegistedProducts(SqlSession sqlSession, Member loginUser) {
		return sqlSession.selectList("marketMapper.selectMyRegistedProducts", loginUser);
	}

	public List<Product> selectAppliedProducts(SqlSession sqlSession, Member loginUser) {
		return sqlSession.selectList("marketMapper.selectAppliedProducts", loginUser);
	}

	public List<Product> selectIAppliedProducts(SqlSession sqlSession, Member loginUser) {
		return sqlSession.selectList("marketMapper.selectIAppliedProducts", loginUser);
	}

	public List<Product> selectMyWantedProducts(SqlSession sqlSession, Member loginUser) {
		return sqlSession.selectList("marketMapper.selectMyWantedProducts", loginUser);
	}

	public List<Trade> registProductList(SqlSession sqlSession, Member loginUser) {
		return sqlSession.selectList("marketMapper.registProductList", loginUser);
	}

	public List<Trade> applyProductList(SqlSession sqlSession, Member loginUser) {
		return sqlSession.selectList("marketMapper.applyProductList", loginUser);
	}

	public Product selectProductDetail(SqlSession sqlSession, String productId) {
		return sqlSession.selectOne("marketMapper.selectProductDetail", productId);
	}

	public int updateTradeApply(SqlSession sqlSession, Trade trade) {
		return sqlSession.update("marketMapper.updateTradeApply", trade);
	}

	public int updateCancelApply(SqlSession sqlSession, String productId) {
		return sqlSession.update("marketMapper.updateCancelApply", productId);
	}

}
