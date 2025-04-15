package com._null.semi_box.mypage.service;

import java.util.List;
import com._null.semi_box.mypage.model.vo.MyProduct;

public interface MyProductService {
    List<MyProduct> selectMyProductList(int userPk);
}
