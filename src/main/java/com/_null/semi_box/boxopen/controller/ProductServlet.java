package com._null.semi_box.boxopen.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/getProduct")
public class ProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 랜덤한 1~100일 값 생성
        Random random = new Random();
        int randomDay = random.nextInt(100) + 1;

        // PRODUCT_SN 결정 (1~10 -> 101, 11~20 -> 102, ..., 90~100 -> 110) // 추후 수정 필요함!!
        int productSN = 100 + (randomDay - 1) / 10 + 1;

        // 디버깅 출력 (PRODUCT_SN 값 확인)
        System.out.println("DEBUG: 생성된 randomDay -> " + randomDay);
        System.out.println("DEBUG: 계산된 productSN -> " + productSN);

        // DB 연결 정보
        String url = "jdbc:oracle:thin:@localhost:1521:xe";
        String user = "C##SEMI";
        String password = "SEMI";

        String sql = "SELECT PRODUCT_NAME, PRODUCT_PRICE FROM PRODUCT_DETAIL WHERE PRODUCT_SN = ?";

        // 디버깅 출력 (SQL 쿼리 확인)
        System.out.println("DEBUG: 실행할 SQL Query -> " + sql);

        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
             
            pstmt.setInt(1, productSN);
            System.out.println("DEBUG: 바인딩된 PRODUCT_SN 값 -> " + productSN);

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                String productName = rs.getString("PRODUCT_NAME");
                int productPrice = rs.getInt("PRODUCT_PRICE");

                // JSP에 데이터 전달
                request.setAttribute("productName", productName);
                request.setAttribute("productPrice", productPrice);

                // 디버깅 출력 (DB에서 가져온 값 확인)
                System.out.println("DEBUG: 조회된 상품명 -> " + productName);
                System.out.println("DEBUG: 조회된 상품 가격 -> " + productPrice);
            } else {
                System.out.println("DEBUG: ❌ 해당 PRODUCT_SN(" + productSN + ")에 대한 데이터가 없음!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // ItemInfoPopup.jsp로 포워딩
        request.getRequestDispatcher("/views/common/boxOpen/ItemInfoPopup.jsp").forward(request, response);        
    }
}
