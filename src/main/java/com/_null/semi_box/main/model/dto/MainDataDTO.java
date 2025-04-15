package com._null.semi_box.main.model.dto;

import java.util.ArrayList;

import com._null.semi_box.main.model.vo.MainBox;
import com._null.semi_box.main.model.vo.MainProduct;

public class MainDataDTO {
	private ArrayList<MainBox> mainBoxList;
	private ArrayList<MainProduct> mainProductList;
	
	public MainDataDTO() {}

	public MainDataDTO(ArrayList<MainBox> mainBoxList, ArrayList<MainProduct> mainProductList) {
		super();
		this.mainBoxList = mainBoxList;
		this.mainProductList = mainProductList;
	}
}
