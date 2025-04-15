package com._null.semi_box.mypage.service;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import com._null.semi_box.boxopen.common.Template;
import com._null.semi_box.mypage.model.dao.MyProductDAO;
import com._null.semi_box.mypage.model.vo.MyProduct;

public class MyProductServiceImpl implements MyProductService {

    private MyProductDAO myProductDAO = new MyProductDAO();

    public ArrayList<MyProduct> selectMyProductList(int userPk) {
        SqlSession sqlSession = Template.getSqlSession();
        List<MyProduct> list = myProductDAO.selectMyProductList(sqlSession, userPk);
        if (list == null || list.isEmpty()) {
            System.out.println("No products found for user: " + userPk);
        } else {
            System.out.println("Products retrieved: " + list.size());
        }
        return (ArrayList<MyProduct>) list;
    }

}
