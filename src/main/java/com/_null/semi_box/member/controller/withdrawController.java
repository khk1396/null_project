package com._null.semi_box.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com._null.semi_box.member.model.vo.Member;
import com._null.semi_box.member.service.MemberServiceImpl;

@WebServlet("/checkPassword")
public class withdrawController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String userPassword = request.getParameter("userPassword");
		
		int result = new MemberServiceImpl().withdrawMember(userId, userPassword);
		if (result > 0) {
			request.getSession().invalidate();			
			request.getSession().removeAttribute("loginUser");
		}
		response.setContentType("text/plain; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(result);		
	}
}

