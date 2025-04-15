package com._null.semi_box.main.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com._null.semi_box.main.model.dto.MainDataDTO;
import com._null.semi_box.main.model.vo.MainBox;
import com._null.semi_box.main.model.vo.MainProduct;
import com._null.semi_box.main.service.MainService;
import com._null.semi_box.main.service.MainServiceImpl;
import com._null.semi_box.member.model.vo.Member;
import com.google.gson.Gson;

@WebServlet("/main")
public class MainPageController extends HttpServlet {
	private MainService mainService = new MainServiceImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=UTF-8");
		
		ArrayList<MainBox> boxList = mainService.selectBoxList();
		ArrayList<MainProduct> productList = mainService.selectProductList();
		
		String mainDataGson = new Gson().toJson(new MainDataDTO(boxList, productList)); 
		
		PrintWriter out = response.getWriter();
	
		out.print(mainDataGson);
	}
}
