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
import com._null.semi_box.payBox.model.vo.PayBox;
import com._null.semi_box.payBox.service.PayBoxService;
import com._null.semi_box.payBox.service.PayBoxServiceImpl;

@WebServlet("/mypage/inventory")
public class MyPageController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if(loginUser == null) {
			response.sendRedirect("/semi_box/signin");
		} else {
			int userPk = loginUser.getUserPk();
			PayBoxService inventoryService = new PayBoxServiceImpl();
			ArrayList<PayBox> list = inventoryService.selectPayBoxAllByUserPk(userPk);
			
			request.setAttribute("payBoxList", list);

			request.getRequestDispatcher("/views/myPage/inventory.jsp").forward(request, response);
		}
	}
}
