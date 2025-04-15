package com._null.semi_box.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com._null.semi_box.member.model.vo.Member;
import com._null.semi_box.member.service.MemberService;
import com._null.semi_box.member.service.MemberServiceImpl;

@WebServlet("/signin")
public class SignInController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/signPage/signIn.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");	// post 요청 시 데이터에 한글이 포함된 경우 인코딩 처리
		
		String userId = req.getParameter("userId");
		String userPassword = req.getParameter("userPassword");
		
		Member m = new Member();
		m.setUserId(userId);
		m.setUserPassword(userPassword);
		
		MemberService service = new MemberServiceImpl();
		Member loginUser = service.selectMember(m);
		
		if (loginUser != null) {
			HttpSession session = req.getSession();
			session.setAttribute("loginUser", loginUser);
            session.setAttribute("userPk", loginUser.getUserPk());  // 로그인 시 userPk 세션에 저장
			
			resp.sendRedirect( req.getContextPath() );  // 메인페이지(/semi_box)로 이동후 메인 페이지에 SIGN IN위치에 SIGN OUT 아이콘 표시해야함
		} else {
			req.setAttribute("alertMsg", "로그인에 실패했습니다.");
			// 에러 메시지 표시후 로그인창으로 signIn
			req.getRequestDispatcher("/views/signPage/signIn.jsp").forward(req, resp);
		}
	}
}
