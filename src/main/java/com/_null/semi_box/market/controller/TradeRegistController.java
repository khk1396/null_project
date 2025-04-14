package com._null.semi_box.market.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import com._null.semi_box.market.model.vo.Product;
import com._null.semi_box.market.service.MarketService;
import com._null.semi_box.market.service.MarketServiceImpl;
import com._null.semi_box.model.vo.Member;

@WebServlet("/market/tradeRegist")
public class TradeRegistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// 상품 등록 페이지 기본 기능
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		MarketService mService = new MarketServiceImpl();
		ArrayList<Product> productList = mService.selectMyAllProducts(loginUser);

		request.setAttribute("productList", productList);

		request.getRequestDispatcher("/views/market/tradeRegist.jsp").forward(request, response);
	}
	
	// post요청은 전체 상품 페이지에서 하나 클릭했을때만 요청됨
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		MarketService mService = new MarketServiceImpl();

		String selectProductId = request.getParameter("selectProductId");
		Product selectProduct = mService.selectProductDetail(selectProductId);
		
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");

		if (selectProduct != null && loginUser.getUserPk() == (selectProduct.getUserPk())) {	// 상품이 본인꺼인 경우
			System.out.println("본인의 상품을 교환할 수 없습니다.");
			response.sendRedirect(request.getContextPath());
		} else {

			ArrayList<Product> productList = mService.selectMyAllProducts(loginUser);

			request.getSession().setAttribute("selectProductId", selectProductId); // 전체 상품 페이지에서 하나 클릭한 상품식별자를 세션영역에 저장

			String productName = request.getParameter("selectProductName");
			request.getSession().setAttribute("selectProductName", productName); // 전체 상품 페이지에서 하나 클릭한 상품이름을 세션영역에 저장

			request.setAttribute("productList", productList);

			request.getRequestDispatcher("/views/market/tradeRegist.jsp").forward(request, response);
		}
	}

}
