package com._null.semi_box.main.service;

import java.util.ArrayList;

import com._null.semi_box.main.model.vo.MainBox;
import com._null.semi_box.main.model.vo.MainProduct;

public interface MainService {
	public ArrayList<MainBox> selectBoxList();
	public ArrayList<MainProduct> selectProductList();
}
