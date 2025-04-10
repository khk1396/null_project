package com._null.semi_box.market.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.common.Template;
import com._null.semi_box.market.model.dao.MarketDAO;
import com._null.semi_box.model.vo.Member;
import com._null.semi_box.model.vo.Product;
import com._null.semi_box.model.vo.Trade;

public class MarketServiceImpl implements MarketService {
	MarketDAO productDAO = new MarketDAO();

	@Override
	public ArrayList<Product> selectAllProducts(Member loginUser) {
		SqlSession sqlSession = Template.getSqlSession();

		ArrayList<Product> allUserProducts = (ArrayList<Product>) productDAO.selectAllProducts(sqlSession, loginUser);

		sqlSession.close();

		return allUserProducts;
	}

	@Override
	public ArrayList<Product> selectMyAllProducts(Member loginUser) {
		SqlSession sqlSession = Template.getSqlSession();

		ArrayList<Product> myProducts = (ArrayList<Product>) productDAO.selectMyAllProducts(sqlSession, loginUser);

		sqlSession.close();

		return myProducts;
	}

	@Override
	public int insertTradeRegist(Product product) {
		SqlSession sqlSession = Template.getSqlSession();

		int result = productDAO.insertTradeRegist(sqlSession, product);

		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}

		sqlSession.close();

		return result;
	}

	@Override
	public ArrayList<Product> selectMyRegistedProducts(Member loginUser) {
		SqlSession sqlSession = Template.getSqlSession();

		ArrayList<Product> myProducts = (ArrayList<Product>) productDAO.selectMyRegistedProducts(sqlSession, loginUser);

		sqlSession.close();

		return myProducts;
	}

	@Override
	public ArrayList<Product> selectAppliedProducts(Member loginUser) {
		SqlSession sqlSession = Template.getSqlSession();

		ArrayList<Product> myProducts = (ArrayList<Product>) productDAO.selectAppliedProducts(sqlSession, loginUser);

		sqlSession.close();

		return myProducts;
	}

	@Override
	public ArrayList<Product> selectIAppliedProducts(Member loginUser) {
		SqlSession sqlSession = Template.getSqlSession();

		ArrayList<Product> myProducts = (ArrayList<Product>) productDAO.selectIAppliedProducts(sqlSession, loginUser);

		sqlSession.close();

		return myProducts;
	}

	@Override
	public ArrayList<Product> selectMyWantedProducts(Member loginUser) {
		SqlSession sqlSession = Template.getSqlSession();

		ArrayList<Product> myProducts = (ArrayList<Product>) productDAO.selectMyWantedProducts(sqlSession, loginUser);

		sqlSession.close();

		return myProducts;
	}

	@Override
	public ArrayList<Trade> registProductList(Member loginUser) {
		SqlSession sqlSession = Template.getSqlSession();

		ArrayList<Trade> myProducts = (ArrayList<Trade>) productDAO.registProductList(sqlSession, loginUser);

		sqlSession.close();

		return myProducts;
	}

	@Override
	public ArrayList<Trade> applyProductList(Member loginUser) {
		SqlSession sqlSession = Template.getSqlSession();

		ArrayList<Trade> myProducts = (ArrayList<Trade>) productDAO.applyProductList(sqlSession, loginUser);

		sqlSession.close();

		return myProducts;
	}

	@Override
	public Product selectProductDetail(String productId) {
		SqlSession sqlSession = Template.getSqlSession();

		Product myProducts = productDAO.selectProductDetail(sqlSession, productId);

		sqlSession.close();

		return myProducts;
	}

	@Override
	public int updateTradeApply(Trade trade) {
		SqlSession sqlSession = Template.getSqlSession();

		int result = productDAO.updateTradeApply(sqlSession, trade);

		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}

		sqlSession.close();

		return result;
	}

	@Override
	public int updateCancelApply(String productId) {
		SqlSession sqlSession = Template.getSqlSession();

		int result = productDAO.updateCancelApply(sqlSession, productId);

		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}

		sqlSession.close();

		return result;
	}

}
