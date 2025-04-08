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

import com._null.semi_box.market.service.MarketService;
import com._null.semi_box.market.service.MarketServiceImpl;
import com._null.semi_box.model.vo.Member;
import com._null.semi_box.model.vo.Product;


@WebServlet("/market")
public class MarketController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/*
	 * private String userPk;
	private String userId;
	private String userPassword;
	private String userName;
	private String userNickname;
	private String address;
	private Date enrollDate;
	private String status;
	
	 */

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		// (추후에 삭제 예정 코드)
		Date d = Date.valueOf("2025-04-07");
		Member exampleMember = new Member("asd", "seongjae", "asd123", "유성재", "성재띠", "부천시 원미구 상동", d, "Y");
		session.setAttribute("loginUser", exampleMember);	
		
	
		Member loginUser = (Member)session.getAttribute("loginUser");
		MarketService marketService = new MarketServiceImpl();
		ArrayList<Product> productList = marketService.selectAllProducts(loginUser);
		
		request.setAttribute("productList", productList);
		System.out.println(productList);
		
		request.getRequestDispatcher("views/market/allUsersTradeProducts.jsp").forward(request, response);
		
		//------------------------------------------------------------------------
	}
}
