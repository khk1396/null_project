package com._null.semi_box.sign.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com._null.semi_box.member.model.vo.Member;
import com._null.semi_box.member.service.MemberServiceImpl;

/**
 * Servlet implementation class CheckIdController
 */
@WebServlet("/checkId")
public class CheckIdController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		
		int result = new MemberServiceImpl().selectMemberById(userId);
		
		response.setContentType("text/plain; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(result > 0) {
			out.print("이미 사용 중인 아이디입니다.");
		} else {
			out.print("사용 가능한 아이디입니다.");
		}
		
	}

}
