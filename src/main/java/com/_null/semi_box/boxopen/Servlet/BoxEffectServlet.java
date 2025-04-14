package com._null.semi_box.boxopen.Servlet;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com._null.semi_box.boxopen.model.dao.BoxEffectDAO;
import com._null.semi_box.boxopen.model.vo.BoxOpenProductDetail; 

@WebServlet("/boxOpenEffect")
public class BoxEffectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1~100 사이의 랜덤 숫자 생성 // 추후 수정 필요함!
        Random rand = new Random();
        int randomValue = rand.nextInt(100) + 1;
        String productSn;

        if (randomValue <= 10) productSn = "101";
        else if (randomValue <= 20) productSn = "102";
        else if (randomValue <= 30) productSn = "103";
        else if (randomValue <= 40) productSn = "104";
        else if (randomValue <= 50) productSn = "105";
        else if (randomValue <= 60) productSn = "106";
        else if (randomValue <= 70) productSn = "107";
        else if (randomValue <= 80) productSn = "108";
        else if (randomValue <= 90) productSn = "109";
        else productSn = "110";

        // 상품 정보 조회
        BoxEffectDAO dao = new BoxEffectDAO();
        BoxOpenProductDetail product = dao.selectProductBySn(productSn); 

        // 조회 결과 JSP에 전달
        if (product != null) {
            request.setAttribute("productName", product.getProductName());
            request.setAttribute("productPrice", product.getProductPrice());
        }

        request.getRequestDispatcher("/views/common/boxOpen/itemInfoPopup.jsp").forward(request, response);
    }
}
