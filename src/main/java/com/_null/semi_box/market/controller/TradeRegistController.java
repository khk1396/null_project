package com._null.semi_box.market.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com._null.semi_box.market.service.MarketService;
import com._null.semi_box.market.service.MarketServiceImpl;
import com._null.semi_box.model.vo.Member;
import com._null.semi_box.model.vo.Product;

/**
 * Servlet implementation class TradeRegistController
 */
@WebServlet("/tradeRegist")
public class TradeRegistController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		Member loginUser = (Member) session.getAttribute("loginUser");
		MarketService marketService = new MarketServiceImpl();

		if (loginUser != null) {
			ArrayList<Product> productList = marketService.selectMyAllProducts(loginUser);
			request.setAttribute("productList", productList);

			request.getRequestDispatcher("/views/market/tradeRegist.jsp").forward(request, response);
		} else {
			request.setAttribute("errorMsg", "로그인이 필요합니다.");
			response.sendRedirect("/");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
