package com._null.semi_box.mypage.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com._null.semi_box.member.model.vo.Member;
import com._null.semi_box.mypage.model.vo.MyProduct;
import com._null.semi_box.mypage.service.MyProductService;
import com._null.semi_box.mypage.service.MyProductServiceImpl;

@WebServlet("/mypage/myProduct")
public class MyProductController extends HttpServlet {
    private MyProductService myProductService = new MyProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Member loginUser = (Member) session.getAttribute("loginUser");

        if (loginUser == null) {
            response.sendRedirect("/semi_box/signin");
        } else {
            int userPk = loginUser.getUserPk();
            List<MyProduct> list = myProductService.selectMyProductList(userPk);
            System.out.println(list);
            request.setAttribute("myProductList", list);
            request.getRequestDispatcher("/views/myPage/myProduct.jsp").forward(request, response);
        }
    }
}
