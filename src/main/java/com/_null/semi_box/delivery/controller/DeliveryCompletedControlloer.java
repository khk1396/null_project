package com._null.semi_box.delivery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com._null.semi_box.delivery.service.DeliveryService;
import com._null.semi_box.delivery.service.DeliveryServiceImpl;
import com._null.semi_box.member.model.vo.Member;
import com._null.semi_box.mypage.model.vo.OrderHistory;

/**
 * Servlet implementation class DeliveryCompletedControlloer
 */
@WebServlet("/mypage/DeliveryCompleted")
public class DeliveryCompletedControlloer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeliveryCompletedControlloer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 서비스 객체 생성  */
		DeliveryService dService = new DeliveryServiceImpl();
		
		/* 배송신청에서 주소 값 받기  */
		String address = request.getParameter("orderArddress");
		String productId = request.getParameter("ProductId");
	
		/* DB에 배송신청 값 보내기  */
		int result = dService.deliveryApplication(productId, address);

		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
		OrderHistory oh = dService.selectDeliveryInfo(m.getUserPk(), productId );
		
		
		System.out.println(oh);
		
		request.setAttribute("delivery", oh);
				
		request.getRequestDispatcher("../views/delivery/deliveryCompleted.jsp").forward(request, response);
	}



}
