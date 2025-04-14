package com._null.semi_box.delivery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com._null.semi_box.member.model.vo.Member;

/**
 * Servlet implementation class DeliveryRequestController
 */
@WebServlet("/mypage/deliveryRequest")
public class DeliveryRequestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeliveryRequestController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 로그인 정보 받기 
		HttpSession session = request.getSession();
		int productId = Integer.parseInt(request.getParameter("prodcutId"));
		
		Member m =  (Member)session.getAttribute("loginUser");	
		
		if ( m == null) {
			request.setAttribute("alertMsg", "로그인후 시도해주세요");
			request.getRequestDispatcher("/views/signPage/signIn.jsp").forward(request, response);
		}
		
		session.setAttribute("loginUser", m);
		request.setAttribute("productId", productId);

		request.getRequestDispatcher("../views/delivery/deliveryRequest.jsp").forward(request, response);
	}

}
