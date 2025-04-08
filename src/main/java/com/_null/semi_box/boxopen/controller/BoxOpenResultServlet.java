package com._null.semi_box.boxopen.controller;

import com._null.semi_box.boxopen.model.vo.BoxOpenProduct;
import com._null.semi_box.boxopen.model.vo.BoxOpenProductDetail;
import com._null.semi_box.boxopen.service.BoxOpenService;
import com._null.semi_box.boxopen.service.BoxOpenServiceImpl;
import com._null.semi_box.boxopen.util.FortuneUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.UUID;
import java.util.Date;
import java.text.SimpleDateFormat;

@WebServlet("/boxOpenResult")
public class BoxOpenResultServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. 사용자 ID (세션에서 가져온다고 가정)
        HttpSession session = request.getSession();
        String userPk = (String) session.getAttribute("userPk");
        if (userPk == null) userPk = "temp-user"; // 테스트용

        // 2. 랜덤 숫자 → 상품 번호 매핑
        int rand = (int) (Math.random() * 100); // 0~99
        int productSnNumber = (rand / 10) + 101;
        String productSn = String.valueOf(productSnNumber);

        // 3. UUID 생성
        String uuid = UUID.randomUUID().toString();

        // 4. 운세 및 다이어리 기본값
        String fortune = FortuneUtil.generateFortune();				// boxopen.util.(FortuneUtil)참고!!!
        String diary = "기록이 없습니다.";

        // 5. BoxOpenProduct 객체 생성
        BoxOpenProduct product = new BoxOpenProduct();
        product.setProductId(uuid);
        product.setUserPk(userPk);
        product.setProductSn(productSn);
        product.setFortune(fortune);
        product.setDiary(diary);
        product.setStatus("HAVE");

        // 6. 서비스 호출
        BoxOpenService service = new BoxOpenServiceImpl();
        int result = service.insertBoxOpenProduct(product);
        System.out.println(product);
        System.out.println(result);
        
        BoxOpenProductDetail detail = service.selectProductDetailByProductSn(productSn);
        
        /* 
         * console 테스트용(로그 조회)
        if (detail == null) {
            System.out.println("test PRODUCT_DETAIL에 해당 productSn 없을 경ㅇ우: " + productSn);
        } else {
            System.out.println("test 상품 정보 있을 경우: " + detail.toString());
        }
        */
        
        
        // 7. 결과를 request에 담고 JSP로 전달
        request.setAttribute("productName", detail.getProductName());
        request.setAttribute("productImg", detail.getProductImg());
        request.setAttribute("productPrice", detail.getProductPrice());
        request.setAttribute("fortune", product.getFortune());
        request.setAttribute("productId", uuid);							// if uuid 꼬이는 오류 발생시에 이 구간 수정 

        request.getRequestDispatcher("/views/boxOpen/itemInfoPopup.jsp").forward(request, response);
    }
}

