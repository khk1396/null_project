package com._null.semi_box.sign.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com._null.semi_box.sign.model.vo.Member;
import com._null.semi_box.sign.service.MemberServiceImpl;


@WebServlet("/signup")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet signup");
		request.getRequestDispatcher("/views/signPage/signUp.jsp").forward(request, response);	
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost signup");

		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("userPassword");
		String userNickName = request.getParameter("userNickName");
		String address = request.getParameter("address");
		System.out.println("doPost1");
		System.out.println(String.format("%s,%s,%s,%s,%s"
			, userId, userName, userPassword, userNickName, address));
		
		Member m = new Member(userId, userName, userPassword, userNickName, address);
		System.out.println("doPost2");
		int result = 0;
		
//		try {
				result = new MemberServiceImpl().insertMember(m);
//		} catch(Exception e) 
//		{
//			
//		}
		System.out.println("doPost3");
		
		if (result > 0) {		// 회원가입 성공!! --> 메인페이지 url 재요청
			System.out.println("doPost4");
			request.getSession().setAttribute("alertMsg", "회원가입에 성공했습니다^^");
			response.sendRedirect( request.getContextPath() );
		} else {	
			System.out.println("doPost5");
			request.setAttribute("errorMsg", "회원가입에 실패했습니다.");
			response.sendRedirect( request.getContextPath() + "/signup" );  // 회원 가입 화면
		}		
	}
}

