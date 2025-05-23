package com._null.semi_box.shop.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com._null.semi_box.member.model.vo.Member;
import com._null.semi_box.shop.model.vo.SemiBoxVo;
import com._null.semi_box.shop.model.vo.SemiProduct;
import com._null.semi_box.shop.service.ProductService;
import com._null.semi_box.shop.service.SemiBoxService;

@WebServlet("/shop/details")
public class ShopProductDetailController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String boxType = request.getParameter("boxType");
		SemiBoxService semiBoxService = new SemiBoxService();
		
		SemiBoxVo semiBoxVo = semiBoxService.getBoxByType(boxType);	
		ArrayList<SemiProduct> semiProductList = new ProductService().productList(semiBoxVo.getBoxCode());
		
        HttpSession session = request.getSession();
        Member loginUser = (Member)session.getAttribute("loginUser");
        
        if(loginUser == null) {
        	response.sendRedirect("/semi_box/signin");
        } else {
        	request.setAttribute("semiBoxVo", semiBoxVo); 
        	request.setAttribute("semiProductList", semiProductList);
        	request.getRequestDispatcher("/views/shop/shopProductDetails.jsp").forward(request, response);		
        }
	}
}

