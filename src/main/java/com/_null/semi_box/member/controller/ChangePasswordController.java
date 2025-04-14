package com._null.semi_box.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com._null.semi_box.member.model.vo.Member;
import com._null.semi_box.member.service.MemberServiceImpl;

@WebServlet("/ChangePassword")
public class ChangePasswordController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("userId").trim();
		String pwd = request.getParameter("current-pwd").trim();
		String newPwd = request.getParameter("change-pwd").trim();
		
		HttpSession session = request.getSession();
		Member orgUser = (Member)session.getAttribute("loginUser");

		// 전달된 데이터 추출 (아이디, 현재비밀번호, 변경할 비밀번호)
		int result = new MemberServiceImpl().updatePassword(id, pwd, newPwd);
		
		if (result > 0) {
			request.getSession().invalidate();
			request.getSession().removeAttribute("loginUser");
		}
		response.setContentType("text/plain; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(result);
	}
}
