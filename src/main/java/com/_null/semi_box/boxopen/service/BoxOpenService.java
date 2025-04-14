package com._null.semi_box.boxopen.service;

import com._null.semi_box.boxopen.model.vo.BoxOpenProduct;
import com._null.semi_box.boxopen.model.vo.BoxOpenProductDetail;

public interface BoxOpenService {
    int insertBoxOpenProduct(BoxOpenProduct product);
    BoxOpenProductDetail selectProductDetailByProductSn(int productSn); // 변경됨
    int updateDiary(String productId, String diary);
}
