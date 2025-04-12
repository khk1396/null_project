package com._null.semi_box.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com._null.semi_box.member.service.MemberServiceImpl;

@WebServlet("/mypage/withdraw")    // -- @WebServlet("/mypage/modify-account")
public class WithdrawController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Content directory: /src/main/webapp
		request.getRequestDispatcher("/views/myPage/withdraw.jsp").forward(request, response);	
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");	// post 요청 시 데이터에 한글이 포함된 경우 인코딩 처리
		
		String id = request.getParameter("userId");
		String pwd = request.getParameter("userPassword");
		
		int result = new MemberServiceImpl().withdrawMember(id, pwd);
		
		if (result > 0) {
			// 탈퇴 성공
			request.getSession().invalidate();			
			request.getSession().setAttribute("alertMsg", "회원 탈퇴가 완료되었습니다. 그동안 감사합니다.");
			request.getSession().removeAttribute("loginUser");
			response.sendRedirect( request.getContextPath() );
		} else {
			// 탈퇴 실패
			request.getSession().setAttribute("alertMsg", "회원 탈퇴에 실패하였습니다. 비밀번호를 확인하시기 바랍니다.");
			request.getRequestDispatcher("/views/myPage/withdraw.jsp").forward(request, response);
		}
	}
}
