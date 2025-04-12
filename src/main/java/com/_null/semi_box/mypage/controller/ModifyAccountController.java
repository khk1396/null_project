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

// @WebServlet({"/modify-account", "/mypage/modify-account"})
@WebServlet("/mypage/modify-account")
public class ModifyAccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Content directory: /src/main/webapp
		request.getRequestDispatcher("/views/myPage/modifyAccount.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String userId = request.getParameter("userId");
		String userNickName = request.getParameter("userNickName");
		String address = request.getParameter("address");
		
		/* System.out.println("userid : " + userId);
		System.out.println("userNickName : " + userNickName);
		System.out.println("address : " + address);
		*/
		
		HttpSession session = request.getSession();
		Member orgUser = (Member)session.getAttribute("loginUser");
		int result = new MemberServiceImpl().updateMember(userId, userNickName, address);
		if (result > 0) {
			// session에 nickname, address 변경
			orgUser.setUserNickName(userNickName);
			orgUser.setAddress(address);
			session.setAttribute("loginUser", orgUser);
			session.setAttribute("alertMsg", "회원 정보 수정에 성공했습니다.");
			response.sendRedirect( request.getContextPath() );
		} else {
			request.setAttribute("alertMsg", "회원 정보 수정에 실패했습니다.");
			request.getRequestDispatcher("/views/myPage/modifyAccount.jsp").forward(request, response);
		}
	}
	
}




