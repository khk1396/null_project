package com._null.semi_box.mypage.service;

import java.util.ArrayList;

import com._null.semi_box.mypage.model.vo.MyProduct;

public interface MyProductService {
	public ArrayList<MyProduct> selectMyProductList(int userPk);
}
