package com._null.semi_box.boxopen.controller;

import com._null.semi_box.boxopen.model.vo.BoxOpenProduct;
import com._null.semi_box.boxopen.model.vo.BoxOpenProductDetail;
import com._null.semi_box.boxopen.service.BoxOpenService;
import com._null.semi_box.boxopen.service.BoxOpenServiceImpl;
import com._null.semi_box.boxopen.util.FortuneUtil;
import com._null.semi_box.member.model.vo.Member; // "loginUser" 캐스팅을 위한 import

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.UUID;

@WebServlet("/boxOpenResult")
public class BoxOpenResultServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. 로그인된 사용자 정보 가져오기
        HttpSession session = request.getSession();
        Object loginUserObj = session.getAttribute("loginUser");

        int userPk;
        if (loginUserObj == null) {
            // 로그인되어 있지 않으면 로그인 페이지로 리다이렉트
            response.sendRedirect(request.getContextPath() + "/views/member/loginForm.jsp");
            return;
        } else {
            // 로그인된 사용자에서 userPk 추출
            Member loginUser = (Member) loginUserObj;
            userPk = loginUser.getUserPk();
        }

        // 2. 랜덤 숫자 → 상품 번호 매핑
        int rand = (int) (Math.random() * 100); // 0~99
        int productSn = (rand / 10) + 101;      // int로 바로 사용

        // 3. UUID 생성
        String uuid = UUID.randomUUID().toString();

        // 4. 운세 및 다이어리 기본값
        String fortune = FortuneUtil.generateFortune();
        String diary = "기록이 없습니다.";

        // 5. BoxOpenProduct 객체 생성
        BoxOpenProduct product = new BoxOpenProduct();
        product.setProductId(uuid);
        product.setUserPk(userPk);
        product.setProductSn(productSn); // int로 수정됨
        product.setFortune(fortune);
        product.setDiary(diary);
        product.setStatus("HAVE");
        product.setGetDate(new java.sql.Date(System.currentTimeMillis()));

        // 로그로 확인
        System.out.println("ㅅㄷㄴㅅdyd / insert 전 product 객체: " + product);

        // 6. 서비스 호출
        BoxOpenService service = new BoxOpenServiceImpl();
        int result = service.insertBoxOpenProduct(product);

        // 7. 상품 상세 정보 조회 (int 전달)
        BoxOpenProductDetail detail = service.selectProductDetailByProductSn(productSn);

        // 8. 결과를 request에 담아서 JSP로 전달
        if (detail != null) {
            request.setAttribute("productName", detail.getProductName());
            request.setAttribute("productImg", detail.getProductImg());
            request.setAttribute("productPrice", detail.getProductPrice());
        } else {
            request.setAttribute("productName", "존재하지 않는 상품");
            request.setAttribute("productImg", "/resources/img/default.png");
            request.setAttribute("productPrice", 0);
        }

        request.setAttribute("fortune", product.getFortune());
        request.setAttribute("productId", uuid);

        // 결과 화면으로 포워딩
        request.getRequestDispatcher("/views/boxOpen/itemInfoPopup.jsp").forward(request, response);
    }
}
