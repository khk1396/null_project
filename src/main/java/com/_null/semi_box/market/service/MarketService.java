package com._null.semi_box.market.service;

import java.util.ArrayList;

import com._null.semi_box.market.model.vo.Product;
import com._null.semi_box.market.model.vo.Trade;
import com._null.semi_box.model.vo.Member;

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

	/* 상품식별자로 상품 정보 가져오기 */
	Product selectProductDetail(String productId);

	/* 상품식별자로 거래 요청했던 내 상품 취소하기 */
	int updateCancelApply(String productId);

	/* 상품식별자를 통해 Status를 Trade로 바꾸기 */
	int updateStatusToTrade(String myProductId);

	/* 상품식별자를 통해 Status를 Have로 바꾸기 */
	int updateStatustoHave(String productId);

	/* 교환 수락해서 TRADE STATUS를 ACCEPT로 바꾸기 */
	int updateTradeStatusToAccept(Product myProduct);

	/* 교환 수락해서 상품의 USER_PK 바꾸고 다른 컬럼들 초기화 */
	int updateProductOwner(Product myProduct);

	/* 교환 거절해서 TRADE테이블의 APPLY 삭제 */
	int updateRejectApply(Product product);

	/* TRADE테이블에서 TRADE_ID~REGIST까지만 가져오기 */
	Trade selectTradeInfo(String selectProductId);

	/* TRADE테이블에 등록되어있던 상품+내가요청한 상품 데이터 INSERT */
	int insertTradeApply(Trade trade);

	/* 교환 수락으로 나머지 trade테이블에 있는 요청 목록 지우기 */
	int deleteOtherApply(String productId);

	/* 교환 수락으로 자동 요청 취소된 상품들 status have로 변경 */
	int updateOtherStatus(Product myProduct);
}
