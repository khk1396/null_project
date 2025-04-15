package com._null.semi_box.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com._null.semi_box.member.model.vo.Member;
import com._null.semi_box.payBox.model.vo.PayBox;
import com._null.semi_box.payBox.service.PayBoxServiceImpl;

/**
 * Servlet implementation class PaymentResultController
 */
@WebServlet("/shop/paymentResult")
public class PaymentResultController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/shop/paymentComplete.jsp").forward(request, response);	
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String boxCode = request.getParameter("boxCode");
		String boxImg = request.getParameter("boxImg");
		String totalPrice = request.getParameter("totalPrice");
		String paymentMethod = request.getParameter("paymentMethod");

		HttpSession session = request.getSession();
		Member loginUser = (Member) session.getAttribute("loginUser");
		int userPk = loginUser.getUserPk();

		// DB 저장 로직
		PayBox vo = new PayBox();
		vo.setBoxCode(boxCode);
		vo.setBoxImg(boxImg + ".jsp");
		vo.setPrice(Integer.parseInt(totalPrice));
		vo.setPayMethod(paymentMethod);
		vo.setUserPk(userPk);
		vo.setStatus("SUCCESS");  // 상태 필드


		int result = new PayBoxServiceImpl().insertPayBox(vo);

		if (result > 0) {
			// 저장 성공 → 결제 완료 페이지로 이동
			request.getRequestDispatcher("/views/shop/paymentComplete.jsp").forward(request, response);
		} else {
			// 저장 실패 → 에러 페이지로
			request.setAttribute("msg", "결제 저장 실패");
			request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request, response);
		}
	}
}





