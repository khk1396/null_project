package com._null.semi_box.market.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.boxopen.common.Template;
import com._null.semi_box.market.model.dao.MarketDAO;
import com._null.semi_box.market.model.vo.Product;
import com._null.semi_box.market.model.vo.Trade;
import com._null.semi_box.member.model.vo.Member;	

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

	@Override
	public int updateStatusToTrade(String myProductId) {
		SqlSession sqlSession = Template.getSqlSession();

		int result = productDAO.updateStatusToTrade(sqlSession, myProductId);

		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}

		sqlSession.close();

		return result;
	}

	@Override
	public int updateStatustoHave(String productId) {
		SqlSession sqlSession = Template.getSqlSession();

		int result = productDAO.updateStatustoHave(sqlSession, productId);

		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}

		sqlSession.close();

		return result;
	}

	@Override
	public int updateTradeStatusToAccept(Product myProduct) {
		SqlSession sqlSession = Template.getSqlSession();

		int result = productDAO.updateTradeStatusToAccept(sqlSession, myProduct);

		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}

		sqlSession.close();

		return result;
	}

	@Override
	public int updateProductOwner(Product product) {
		SqlSession sqlSession = Template.getSqlSession();

		int result = productDAO.updateProductOwner(sqlSession, product);

		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}

		sqlSession.close();

		return result;
	}

	@Override
	public int updateRejectApply(Product product) {
		SqlSession sqlSession = Template.getSqlSession();

		int result = productDAO.updateRejectApply(sqlSession, product);

		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}

		sqlSession.close();

		return result;
	}

	@Override
	public Trade selectTradeInfo(String selectProductId) {
		SqlSession sqlSession = Template.getSqlSession();

		Trade trade = productDAO.selectTradeInfo(sqlSession, selectProductId);

		sqlSession.close();

		return trade;
	}

	@Override
	public int insertTradeApply(Trade trade) {
		SqlSession sqlSession = Template.getSqlSession();

		int result = productDAO.insertTradeApply(sqlSession, trade);

		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}

		sqlSession.close();

		return result;
	}

	@Override
	public int deleteOtherApply(String productId) {
		SqlSession sqlSession = Template.getSqlSession();

		int result = productDAO.deleteOtherApply(sqlSession, productId);

		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}

		sqlSession.close();

		return result;
	}

	@Override
	public int updateOtherStatus(Product myProduct) {
		SqlSession sqlSession = Template.getSqlSession();

		int result = productDAO.updateOtherStatus(sqlSession, myProduct);

		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}

		sqlSession.close();

		return result;
	}

}
