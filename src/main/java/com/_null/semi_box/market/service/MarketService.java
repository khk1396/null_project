package com._null.semi_box.market.service;

import java.util.ArrayList;

import com._null.semi_box.model.vo.Member;
import com._null.semi_box.model.vo.Product;
import com._null.semi_box.model.vo.Trade;

public interface MarketService {
	/* 전체 교환중인 상품 조회용 */
	ArrayList<Product> selectAllProducts(Member loginUser);
	
	/* 내가 갖고있는 상품 조회용 */
	ArrayList<Product> selectMyAllProducts(Member loginUser);
	
	/* 상품 등록용 (insert) */
	int insertTradeRegist(Product product);

	/* 내가 등록한 물품에서 내 상품정보 */
	ArrayList<Product> selectMyRegistedProducts(Member loginUser);

	/* 내가 등록한 물품에서 요청온 상대 상품정보 */
	ArrayList<Product> selectAppliedProducts(Member loginUser);

	/* 내가 요청한 거래에서 내 물품정보 */
	ArrayList<Product> selectIAppliedProducts(Member loginUser);

	/* 내가 요청한 거래에서 상대 물품정보 */
	ArrayList<Product> selectMyWantedProducts(Member loginUser);

	/* 교환내역 페이지에서 등록이었을때 */
	ArrayList<Trade> registProductList(Member loginUser);
	
	/* 교환내역 페이지에서 요청이었을때 */
	ArrayList<Trade> applyProductList(Member loginUser);

	Product selectProductDetail(String productId);

	int updateTradeApply(Trade trade);

	int updateCancelApply(String productId);
}
