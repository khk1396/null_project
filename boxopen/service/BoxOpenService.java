package com._null.semi_box.boxopen.service;

import com._null.semi_box.boxopen.model.vo.BoxOpenProduct;
import com._null.semi_box.boxopen.model.vo.BoxOpenProductDetail;

public interface BoxOpenService {
    int insertBoxOpenProduct(BoxOpenProduct product);
    BoxOpenProductDetail selectProductDetailByProductSn(String productSn);
    
    int updateDiary(String productId, String diary);
}