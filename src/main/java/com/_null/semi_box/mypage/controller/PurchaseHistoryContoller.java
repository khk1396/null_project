package com._null.semi_box.mypage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com._null.semi_box.member.model.vo.Member;
import com._null.semi_box.mypage.common.PageInfo;
import com._null.semi_box.mypage.model.vo.OrderHistory;
import com._null.semi_box.mypage.service.HistoryService;
import com._null.semi_box.mypage.service.HistoryServiceImpl;

/**
 * Servlet implementation class PurchaseHistory
 */
@WebServlet("/mypage/purchase-history")
public class PurchaseHistoryContoller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PurchaseHistoryContoller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response		
			) throws ServletException, IOException {
		/* 서비스 객체 생성 */
		HistoryService hServcie = new HistoryServiceImpl();		
		
		
		/* 로그인한 user pk로 조회 */
		/* 임시로 생성*/
//		String id = "4";
		String cpage =	request.getParameter("cpage");
		
		HttpSession session = request.getSession();
		Member m =  (Member)session.getAttribute("loginUser");	
		
		int id = m.getUserPk();
		
		if ( cpage == null  ) {
			 cpage = "1";
		} 
		
		
		

		// 페이징바 개수, 한 페이지당 표시할 게시글 개수 --> 지정 
		int pageLimit = 5;  // 페이징바 개수
		int boardLimit = 4; // 한페이지 당 10개 표시

		
		/* 유저 구매 이력 조회 */
		int listCount = hServcie.selectUserOrder(id);
		
		PageInfo pi = new PageInfo(listCount, Integer.parseInt(cpage), pageLimit, boardLimit);
		
		/* 로그인한 계정명으로 구매 내역 조회 */
		ArrayList<OrderHistory> list = hServcie.selectUserOrder(pi, id);		
		
		request.setAttribute("list", list);
		request.setAttribute("pi", pi);
		
		request.getRequestDispatcher("/views/myPage/purchaseHistory.jsp").forward(request, response);
	}



}
