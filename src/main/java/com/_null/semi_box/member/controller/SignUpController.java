package com._null.semi_box.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com._null.semi_box.member.model.vo.Member;
import com._null.semi_box.member.service.MemberServiceImpl;


@WebServlet("/signup")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/signPage/signUp.jsp").forward(request, response);	
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("userPassword");
		String userNickName = request.getParameter("userNickName");
		String address = request.getParameter("address");
		
		Member m = new Member(userId, userName, userPassword, userNickName, address);
		
		int result = 0;
		
		result = new MemberServiceImpl().insertMember(m);
		
		if (result > 0) {		// 회원가입 성공!! --> 메인페이지 url 재요청
			request.setAttribute("alertMsg", "회원가입에 성공했습니다^^");
			request.getRequestDispatcher("/views/signPage/signIn.jsp").forward(request, response);
		} else {	
			request.setAttribute("alertMsg", "회원가입에 실패했습니다.");
			// 회원 가입 화면
			request.getRequestDispatcher("/views/signPage/signUp.jsp").forward(request, response); 
		}		
	}
}

