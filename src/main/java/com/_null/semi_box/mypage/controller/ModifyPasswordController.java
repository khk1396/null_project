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

@WebServlet("/mypage/modifyPassword")
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
		System.out.println("doGet modifypassword");
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
			System.out.println("doPost1 modifypassword");
			
			// 비밀번호 변경 성공 
			// 로그아웃 처리 --> 세션 영역을 비워주기(제거) 이거 해야 하나
			request.getSession().invalidate();
			// orgUser.setUserPassword(newPwd);
			// "비밀번호 변경 성공했습니다" 메시지 저장
			request.getSession().setAttribute("alertMsg", "비밀번호 변경에 성공했습니다. \n 재 로그인 해주세요");
			// 메인 페이지로 url 재요청
			response.sendRedirect( request.getContextPath() );
		} else {
			System.out.println("doPost2 modifypassword");
			// "비밀번호 변경 실패했습니다" 메시지 저장
			request.setAttribute("alertMsg", "비밀번호 변경 실패했습니다.");
			// 에러페이지로 응답(포워딩)
			// request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
			response.sendRedirect( request.getContextPath() );
		}
	}		
}
