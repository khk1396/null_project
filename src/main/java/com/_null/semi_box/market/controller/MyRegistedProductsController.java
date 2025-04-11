package com._null.semi_box.market.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com._null.semi_box.market.service.MarketService;
import com._null.semi_box.market.service.MarketServiceImpl;
import com._null.semi_box.model.vo.Member;
import com._null.semi_box.model.vo.Product;
import com._null.semi_box.model.vo.Trade;

/**
 * Servlet implementation class myRegistedProductsController
 */
@WebServlet("/market/myRegistedProducts")
public class MyRegistedProductsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	//	나의 등록 상품 페이지 클릭시
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		MarketService mService = new MarketServiceImpl();
		
		ArrayList<Product> registedProductList = mService.selectMyRegistedProducts(loginUser);
		ArrayList<Product> appliedProductList = mService.selectAppliedProducts(loginUser);
		
		request.setAttribute("registedProductList", registedProductList);
		request.setAttribute("appliedProductList", appliedProductList);
		
		request.getRequestDispatcher("/views/market/myRegistedProducts.jsp").forward(request, response);
		
	}
	
	// 나의 등록 상품 페이지에서 들어온 요청에 수락/거절 버튼을 눌렀을때
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String apply = request.getParameter("apply");
		
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		MarketService mService = new MarketServiceImpl();
		
		String registProductId = request.getParameter("registProductId");
		String applyProductId = request.getParameter("applyProductId");
		
		Product myProduct = mService.selectProductDetail(registProductId);
		Product otherProduct = mService.selectProductDetail(applyProductId);
		
		if(apply.equals("accept")) {	// 수락 눌렀을때
			myProduct.setOtherProductId(otherProduct.getProductId());	// 나의 PRODUCT객체에 상대 상품식별자 정보 저장
			otherProduct.setOtherProductId(myProduct.getProductId());	// 상대의 PRODUCT객체에 나의 상품식별자 정보 저장
			
			int changeStatus = mService.updateTradeStatusToAccept(myProduct);	// trade의 status accept로 바꾸기
			int updateOtherStatus = mService.updateOtherStatus(myProduct); // 다른 상품들 STATUS를 다시 HAVE로 돌려야함
			int deleteOtherApply = mService.deleteOtherApply(myProduct.getProductId());		// 교환 요청왔던 다른 상품들 trade에서 삭제
			int myProductChange = mService.updateProductOwner(myProduct);	// myProduct의 userPk변경, diary,fortune초기화, status를 Have로 변경
			int otherProductChange = mService.updateProductOwner(otherProduct);	// otherProduct의 userPk변경, diary,fortune초기화, status를 Have로 변경
			
			if(changeStatus > 0 && myProductChange > 0 && otherProductChange > 0 && updateOtherStatus > 0 && deleteOtherApply > 0) {
				System.out.println("교환 성공");
				response.sendRedirect(request.getContextPath()+"/market/myRegistedProducts");
			} else {
				System.out.println("교환 실패");
				response.sendRedirect(request.getContextPath()+"/market/myRegistedProducts");
			}
		}else {	// 거절 눌렀을때
			
			int result = mService.updateRejectApply(myProduct.getProductId());
			if(result > 0) {
				System.out.println("교환 거절 실패");
			}else {
				System.out.println("교환 거절 실패");
			}
			response.sendRedirect(request.getContextPath()+"/market/myRegistedProducts");
			
		}
	}
}
