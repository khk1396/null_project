package com._null.semi_box.market.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com._null.semi_box.market.model.vo.Product;
import com._null.semi_box.market.service.MarketService;
import com._null.semi_box.market.service.MarketServiceImpl;
import com._null.semi_box.model.vo.Member;


@WebServlet("/market")
public class MarketController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("selectProductId");
		session.removeAttribute("selectProductName");
		
		Member login = new Member(1, "apika", "123", "유성재", "포로리", "부천시 원미구", Date.valueOf("2025-04-09"), "Y");
		session.setAttribute("loginUser", login);
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		MarketService mService = new MarketServiceImpl();
		
		ArrayList<Product> productList = mService.selectAllProducts(loginUser);
		
		request.setAttribute("productList", productList);
		
		request.getRequestDispatcher("views/market/allUsersTradeProducts.jsp").forward(request, response);
	}
}
