package com._null.semi_box.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com._null.semi_box.member.model.vo.Member;
import com._null.semi_box.member.service.MemberServiceImpl;

// @WebServlet({"/modify-password", "/mypage/modify-password"})
@WebServlet("/mypage/modify-password")
public class ModifyPasswordController extends HttpServlet {
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
		//System.out.println("경로 확인: " + request.getServletContext().getRealPath("/views/myPage/modifyPassword.jsp"));
		request.getRequestDispatcher("/views/myPage/modifyPassword.jsp").forward(request, response);
		
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		// * 전달된 데이터 추출 (아이디, 현재비밀번호, 변경할 비밀번호)
		String id = request.getParameter("userId");
		String pwd = request.getParameter("currentPwd");
		String newPwd = request.getParameter("password");
		
		HttpSession session = request.getSession();
		Member orgUser = (Member)session.getAttribute("loginUser");
		
		int result = new MemberServiceImpl().updatePassword(id, pwd, newPwd);
		
		if (result > 0) {
			// 비밀번호 변경 성공 
			// 로그아웃 처리 --> 세션 영역을 비워주기(제거) 이거 해야 하나
			request.getSession().invalidate();	
			request.getSession().removeAttribute("loginUser");

			request.getSession().setAttribute("alertMsg", "비밀번호 변경에 성공했습니다. 재 로그인 해주세요");
			
			response.sendRedirect( request.getContextPath() );			
		} else {
			// "비밀번호 변경 실패했습니다" 메시지 저장
			request.setAttribute("alertMsg", "비밀번호 변경 실패했습니다.");
			request.getRequestDispatcher("/views/myPage/modifyPassword.jsp").forward(request, response);
		}
	}		
}
