package com._null.semi_box.boxopen.service;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.boxopen.model.dao.BoxOpenDao;
import com._null.semi_box.boxopen.model.vo.BoxOpenProduct;
import com._null.semi_box.boxopen.model.vo.BoxOpenProductDetail;

import static com._null.semi_box.boxopen.common.Template.getSqlSession;

public class BoxOpenServiceImpl implements BoxOpenService {
    private BoxOpenDao dao = new BoxOpenDao();

    @Override
    public int insertBoxOpenProduct(BoxOpenProduct product) {
        SqlSession session = getSqlSession();
        int result = dao.insertBoxOpenProduct(session, product);
        if (result > 0) session.commit();
        else session.rollback();
        session.close();
        return result;
    }

    @Override
    public BoxOpenProductDetail selectProductDetailByProductSn(int productSn) { // 변경됨
        SqlSession session = getSqlSession();
        BoxOpenProductDetail detail = dao.selectProductDetailByProductSn(session, productSn); // 변경됨
        session.close();
        return detail;
    }

    @Override
    public int updateDiary(String productId, String diary) {
        SqlSession session = getSqlSession();
        int result = dao.updateDiary(session, productId, diary);
        if (result > 0) session.commit();
        else session.rollback();
        session.close();
        return result; 
    }
}
