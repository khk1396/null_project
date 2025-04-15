package com._null.semi_box.boxopen.controller;

import com._null.semi_box.boxopen.service.BoxOpenService;
import com._null.semi_box.boxopen.service.BoxOpenServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/updateDiary")
public class BoxOpenDiaryUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String productId = request.getParameter("productId");
        String diary = request.getParameter("diary");

        BoxOpenService service = new BoxOpenServiceImpl();
        int result = service.updateDiary(productId, diary);

        response.setContentType("text/plain;charset=UTF-8");
        response.getWriter().write(result > 0 ? "성공" : "실패");
    }
}
