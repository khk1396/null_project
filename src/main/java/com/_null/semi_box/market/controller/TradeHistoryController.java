package com._null.semi_box.market.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com._null.semi_box.market.model.vo.Product;
import com._null.semi_box.market.model.vo.Trade;
import com._null.semi_box.market.service.MarketService;
import com._null.semi_box.market.service.MarketServiceImpl;
import com._null.semi_box.model.vo.Member;

/**
 * Servlet implementation class TradeHistoryController
 */
@WebServlet("/market/tradeHistory")
public class TradeHistoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		
		MarketService mService = new MarketServiceImpl();
		
		ArrayList<Trade> registProductList = mService.registProductList(loginUser);		// 내가 직접 등록을 했었던 상품 내역용
		ArrayList<Trade> applyProductList = mService.applyProductList(loginUser);			// 내가 등록되어있는 남의 상품에 신청했던 상품 내역용
		ArrayList<Trade> allHistoryList = new ArrayList<Trade>();					// 위의 두 내역을 합치는 용도
		
		allHistoryList.addAll(applyProductList);
		allHistoryList.addAll(registProductList);
		
		request.setAttribute("allHistoryList", allHistoryList);
		
		request.getRequestDispatcher("/views/market/tradeHistory.jsp").forward(request, response);
	}


}
