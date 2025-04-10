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

/**
 * Servlet implementation class myRegistedProductsController
 */
@WebServlet("/myRegistedProducts")
public class MyRegistedProductsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		
		MarketService mService = new MarketServiceImpl();
		
		ArrayList<Product> registedProductList = mService.selectMyRegistedProducts(loginUser);
		ArrayList<Product> appliedProductList = mService.selectAppliedProducts(loginUser);
		
		request.setAttribute("registedProductList", registedProductList);
		request.setAttribute("appliedProductList", appliedProductList);
		
		request.getRequestDispatcher("/views/market/myRegistedProducts.jsp").forward(request, response);
		
	}

}
