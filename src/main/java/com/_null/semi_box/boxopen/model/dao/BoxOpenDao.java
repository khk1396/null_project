package com._null.semi_box.boxopen.model.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.boxopen.model.vo.BoxOpenProduct;
import com._null.semi_box.boxopen.model.vo.BoxOpenProductDetail;

public class BoxOpenDao {

    // PRODUCT 테이블에 BoxOpenProduct insert
    public int insertBoxOpenProduct(SqlSession sqlSession, BoxOpenProduct product) {
        return sqlSession.insert("boxOpenMapper.insertBoxOpenProduct", product);
    }

    // PRODUCT_DETAIL 테이블에서 상품 상세 조회
    public BoxOpenProductDetail selectProductDetailByProductSn(SqlSession sqlSession, String productSn) {
        return sqlSession.selectOne("boxOpenMapper.selectProductDetailByProductSn", productSn);
    }
    
    // Map.of 사용함(return/)
    public int updateDiary(SqlSession session, String productId, String diary) {
        return session.update("boxOpenMapper.updateDiary", 
            Map.of("productId", productId, "diary", diary));
    }
}