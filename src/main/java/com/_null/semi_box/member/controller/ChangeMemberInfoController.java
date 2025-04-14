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

@WebServlet("/ChangeMemberInfo")
public class ChangeMemberInfoController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("sign-up-userId").trim();
		String userNickName = request.getParameter("sign-up-nickname").trim();
		String address = request.getParameter("sign-up-address").trim();
		HttpSession session = request.getSession();
		Member orgUser = (Member)session.getAttribute("loginUser");
		
		int result = new MemberServiceImpl().updateMember(userId, userNickName, address);
		if (result > 0) {
			// session에 nickname, address 변경
			orgUser.setUserNickName(userNickName);
			orgUser.setAddress(address);
			session.setAttribute("loginUser", orgUser);
		}
		response.setContentType("text/plain; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(result);
	}

}
