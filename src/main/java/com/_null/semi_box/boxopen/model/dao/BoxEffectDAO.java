package com._null.semi_box.boxopen.model.dao;

import java.sql.*;
import com._null.semi_box.boxopen.model.vo.BoxOpenProductDetail;

public class BoxEffectDAO {
    private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
    private static final String USER = "C##SEMI";
    private static final String PASSWORD = "SEMI";

    private Connection getConnection() throws Exception {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    public BoxOpenProductDetail selectProductBySn(String productSn) {
        BoxOpenProductDetail product = null;
        String sql = "SELECT PRODUCT_SN, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_PRICE, PRODUCT_IMG FROM PRODUCT_DETAIL WHERE PRODUCT_SN = ?";

        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, productSn);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
            	product = new BoxOpenProductDetail(
            		    String.valueOf(rs.getInt("PRODUCT_SN")), 
            		    null, 														// box cord 조회 x 추후 리팩터링 필요함!
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
