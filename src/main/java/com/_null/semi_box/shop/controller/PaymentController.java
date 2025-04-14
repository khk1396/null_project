package com._null.semi_box.shop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com._null.semi_box.shop.model.vo.SemiBoxVo;
import com._null.semi_box.shop.service.SemiBoxService;

@WebServlet("/shop/payment")
public class PaymentController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String img = (String)request.getParameter("boxImg");
				
		// quantity
		// String n = request.getParameter("quantity");
		// System.out.println("수량:");
		
		SemiBoxService semiBoxService = new SemiBoxService();
		
		SemiBoxVo semiBoxVo = semiBoxService.getBoxByType(img);	
		request.setAttribute("semiBoxVo", semiBoxVo);
		request.getRequestDispatcher("/views/shop/payment.jsp").forward(request, response);
	}
	
	
}
