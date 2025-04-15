package com._null.semi_box.payBox.service;

import java.util.ArrayList;

import com._null.semi_box.payBox.model.vo.PayBox;

public interface PayBoxService {
	/* SELECT ALL PAYBOX BY USER_PK */
	public ArrayList<PayBox> selectPayBoxAllByUserPk(int userPk);
}
