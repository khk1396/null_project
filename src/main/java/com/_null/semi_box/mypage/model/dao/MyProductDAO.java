package com._null.semi_box.mypage.model.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import com._null.semi_box.mypage.model.vo.MyProduct;

public class MyProductDAO {
    // SqlSession을 인자로 받는 메서드 정의
    public List<MyProduct> selectMyProductList(SqlSession sqlSession, int userPk) {
        return sqlSession.selectList("myProductMapper.selectMyProductList", userPk);
    }
}
