package com._null.semi_box.mypage.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com._null.semi_box.mypage.model.vo.OrderHistory;
import com._null.semi_box.mypage.service.HistoryService;
import com._null.semi_box.mypage.service.HistoryServiceImpl;

/**
 * Servlet implementation class RefundYN
 */
@WebServlet("/mypage/refundYN")
public class RefundYNContorller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RefundYNContorller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		response.setContentType("text/plain;charset=UTF-8");
        PrintWriter out = response.getWriter();
		
		/* 서비스 객체 생성 */
		HistoryService hService = new HistoryServiceImpl();	
		
		
//	    int payId = Integer.parseInt(request.getParameter("payId"));
		
	    int payId = Integer.parseInt(request.getParameter("payId"));
	    int userPk = Integer.parseInt(request.getParameter("userPk"));
	    
	    
	    /* 필요값 OrderHistory 인스턴스로 생성 */	   
	    OrderHistory orderHistory = new OrderHistory();
	    orderHistory.setPayId(payId);
	    orderHistory.setUserPk(userPk);
	    int result = hService.refundChange(orderHistory);
	    

	    
	}


}
