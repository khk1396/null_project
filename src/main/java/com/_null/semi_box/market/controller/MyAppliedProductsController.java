package com._null.semi_box.market.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com._null.semi_box.market.model.vo.Product;
import com._null.semi_box.market.service.MarketService;
import com._null.semi_box.market.service.MarketServiceImpl;
import com._null.semi_box.model.vo.Member;

/**
 * Servlet implementation class MyAppliedProductsController
 */
@WebServlet("/market/myAppliedProducts")
public class MyAppliedProductsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	// 나의 요청 페이지 기본 기능
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		
		MarketService mService = new MarketServiceImpl();

		ArrayList<Product> appliedProductList = mService.selectIAppliedProducts(loginUser);		// 내가 요청한 거래 페이지의 요청한 상품용 
		ArrayList<Product> registedproductList = mService.selectMyWantedProducts(loginUser);	// 내가 요청한 거래 페이지의 등록된 상품용

		request.setAttribute("appliedProductList", appliedProductList);
		request.setAttribute("registedproductList", registedproductList);
		
		request.getRequestDispatcher("/views/market/myAppliedProducts.jsp").forward(request, response);
		
	}
	
	// 나의 요청 페이지에서 요청 취소눌렀을때만 오는 메소드
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		request.setCharacterEncoding("UTF-8");
		
		String productId = request.getParameter("myProductId");
		
		MarketService mService = new MarketServiceImpl();
		
		int updateCancelApply = mService.updateCancelApply(productId);		// TRADE테이블에서 APPLY돼있는 내 상품정보를 잘 제거했는가?
		int updateStatusToHave = mService.updateStatustoHave(productId);		// PRODUCT테이블에서 내 상품의 STATUS를 HAVE로 잘 변경했는가?
		
		if(updateCancelApply > 0 && updateStatusToHave > 0) {
			System.out.println("요청 취소 성공");
		} else {
			System.out.println("요청 취소 실패");
		}
		response.sendRedirect(request.getContextPath()+"/market/myAppliedProducts");
	}
}
