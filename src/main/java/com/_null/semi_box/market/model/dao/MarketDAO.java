package com._null.semi_box.market.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.market.model.vo.Product;
import com._null.semi_box.market.model.vo.Trade;
import com._null.semi_box.member.model.vo.Member;

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
		return sqlSession.delete("marketMapper.updateCancelApply", productId);
	}

	public int updateStatusToTrade(SqlSession sqlSession, String myProductId) {
		return sqlSession.update("marketMapper.updateStatusToTrade", myProductId);
	}

	public int updateStatustoHave(SqlSession sqlSession, String productId) {		
		return sqlSession.update("marketMapper.updateStatusToHave", productId);
	}

	public int updateTradeStatusToAccept(SqlSession sqlSession, Product myProduct) {
		return sqlSession.update("marketMapper.updateTradeStatusToAccept", myProduct);
	}

	public int updateProductOwner(SqlSession sqlSession, Product product) {
		return sqlSession.update("marketMapper.updateProductOwner", product);
	}

	public int updateRejectApply(SqlSession sqlSession, Product product) {
		return sqlSession.delete("marketMapper.updateRejectApply", product);
	}

	public Trade selectTradeInfo(SqlSession sqlSession, String selectProductId) {
		return sqlSession.selectOne("marketMapper.selectTradeInfo", selectProductId);
	}

	public int insertTradeApply(SqlSession sqlSession, Trade trade) {
		return sqlSession.insert("marketMapper.insertTradeApply", trade);
	}

	public int deleteOtherApply(SqlSession sqlSession, String productId) {
		return sqlSession.delete("marketMapper.deleteOtherApply", productId);
	}

	public int updateOtherStatus(SqlSession sqlSession, Product myProduct) {
		return sqlSession.update("marketMapper.updateOtherStatus", myProduct);
	}

}
