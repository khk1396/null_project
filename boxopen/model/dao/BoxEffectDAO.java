package com._null.semi_box.boxopen.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com._null.semi_box.boxopen.model.vo.BoxOpenProductDetail;

public class BoxEffectDAO {
    // DB 연결 정보
    private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
    private static final String USER = "C##SEMI";
    private static final String PASSWORD = "SEMI";

    // 데이터베이스 연결 
    private Connection getConnection() throws Exception {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    // PRODUCT_SN을 기반으로 상품 정보 조회
    public ProductDetail selectProductBySn(String productSn) {
        ProductDetail product = null;
        String sql = "SELECT PRODUCT_SN, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_PRICE, PRODUCT_IMG FROM PRODUCT_DETAIL WHERE PRODUCT_SN = ?";

        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, productSn);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                product = new ProductDetail(
                    rs.getString("PRODUCT_SN"),
                    rs.getString("PRODUCT_NAME"),
                    rs.getString("PRODUCT_DESCRIPTION"),
                    rs.getInt("PRODUCT_PRICE"),
                    rs.getString("PRODUCT_IMG")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return product;
    }
}
