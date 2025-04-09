package com._null.semi_box.mypage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com._null.semi_box.mypage.model.vo.OrderHistory;
import com._null.semi_box.mypage.service.HistoryService;
import com._null.semi_box.mypage.service.HistoryServiceImpl;

/**
 * Servlet implementation class RefundHistoryContorller
 */
@WebServlet("/mypage/refund-hostroy")
public class RefundHistoryContorller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RefundHistoryContorller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 로그인한 user pk로 조회 */
		/* 임시로 생성*/
		String id = "4";
		
		/* 서비스 객체 생성 */
		HistoryService hServcie = new HistoryServiceImpl();
		
		/* 로그인한 계정명으로 구매 내역 조회 */
		ArrayList<OrderHistory> list = hServcie.selectAllOrder(id);
		
//		if ( list != null) {
//				for (int i=0; i<list.size(); i++) {
//					  System.out.println(list.get(i));
//				}
//		} else {
//			System.out.println("실패");
//		}
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("/views/myPage/refundHistory.jsp").forward(request, response);
	}



}
