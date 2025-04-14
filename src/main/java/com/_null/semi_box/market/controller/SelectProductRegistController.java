package com._null.semi_box.market.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com._null.semi_box.market.model.vo.Product;
import com._null.semi_box.market.model.vo.Trade;
import com._null.semi_box.market.service.MarketService;
import com._null.semi_box.market.service.MarketServiceImpl;
import com._null.semi_box.model.vo.Member;

/**
 * Servlet implementation class SelectProductRegistController
 */
@WebServlet("/market/selectRegist")
public class SelectProductRegistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// 선택 등록 페이지에서 상품 체크박스 선택 후 선택 등록을 눌렀을때 기능
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();

		Member loginUser = (Member) session.getAttribute("loginUser");

		MarketService marketService = new MarketServiceImpl();

		String selectProductId = (String)session.getAttribute("selectProductId"); // 전체상품페이지에서 하나 클릭후 상품등록페이지를 지나서 온 내가 원하는 상품식별자     
		
		
		if (selectProductId != null) {	// 교환을 위해 상품하나를 선택해서 상품등록페이지에 왔을때
			String[] productId = request.getParameterValues("productId");	// 내 상품 중에서 선택한 상품
			
			if(productId.length > 1 || productId.length == 0) {	// 내 상품 체크박스를 2개이상 체크했을시 오류페이지로
				System.out.println("상대 상품 1개를 내 상품 2개 이상과 교환할 수 없습니다.");
				response.sendRedirect(request.getContextPath()+"/market");
			}else {	// 정상적으로 상품 1개만 선택하고 선택등록에서도 1개만 선택했을때
				
				// 내가 선택했던 상품 selectProductId로 Trade에서 등록되어있는 데이터를 찾아서 apply쪽에 나의 상품정보 update해주기
				
				Product myProduct = marketService.selectProductDetail(productId[0]);
				
				Trade trade = marketService.selectTradeInfo(selectProductId);		// 선택한 상품 선택자는 이미 TRADE에 REGIST로 등록돼있으니 그 정보를 캐옴
				
				trade.setMyProductId(myProduct.getProductId());
				trade.setMyProductUserPk(myProduct.getUserPk());
				trade.setMyComment(request.getParameter(productId[0]));
				
				int insertTradeApply = marketService.insertTradeApply(trade);		// TRADE테이블에 INSERT해서 (기존의 REGIST는 있고 APPLY는 없는)정보 보존
				
				if(insertTradeApply > 0) {	// 성공
					System.out.println("교환 신청 성공");
				}else {
					System.out.println("교환 신청 실패");
				}

				response.sendRedirect(request.getContextPath()+"/market");
			}
		} else {	// 교환이 아닌 그냥 상품등록 페이지에서 상품들 선택후 등록려고 할 경우

			String[] productId = request.getParameterValues("productId");
			int checkCount = productId.length;

			Product registProduct = new Product();
			int count = 0;
			
			for (int i = 0; i < checkCount; i++) {
				registProduct.setProductId(productId[i]);
				registProduct.setRegistComment(request.getParameter(productId[i]));
				registProduct.setUserPk(loginUser.getUserPk());

				int result = marketService.insertTradeRegist(registProduct);
				if(result > 0) count++;
			}
			
			if(count == checkCount) {
				request.setAttribute("alertMsg", "상품 등록이 정상적으로 완료되었습니다.");
			} else { 
				request.setAttribute("alertMsg", "상품 등록이 제대로 작동되지 않았습니다.");
			}
			response.sendRedirect(request.getContextPath()+"/market");
		}
	}

}
