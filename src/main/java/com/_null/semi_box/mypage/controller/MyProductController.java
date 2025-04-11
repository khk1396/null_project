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
import com._null.semi_box.mypage.model.vo.MyProduct;
import com._null.semi_box.mypage.service.MyProductService;
import com._null.semi_box.mypage.service.MyProductServiceImpl;

@WebServlet("/mypage/myProduct")
public class MyProductController extends HttpServlet {
	private static MyProductService myProductService = new MyProductServiceImpl();
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if(loginUser == null) {
			response.sendRedirect("/semi_box/signin");
		} else {
			// 나의 상품 정보 조회 
			int userPk = loginUser.getUserPk();
			ArrayList<MyProduct> list = myProductService.selectMyProductList(userPk);
			System.out.println("list" + list);
			// request에 목록 저장
			request.setAttribute("myProductList", list);
			request.getRequestDispatcher("/views/myPage/myProduct.jsp").forward(request, response);
		}
	}
}
