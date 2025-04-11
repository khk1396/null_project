package com._null.semi_box.payBox.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.payBox.model.dao.PayBoxDAO;
import com._null.semi_box.payBox.model.vo.PayBox;
import com._null.semi_box.boxopen.common.Template;

public class PayBoxServiceImpl implements PayBoxService {
	private PayBoxDAO payBoxDAO = new PayBoxDAO();
	
	public ArrayList<PayBox> selectPayBoxAllByUserPk(String userPk) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<PayBox> list = (ArrayList<PayBox>)payBoxDAO.selectPayBoxAll(sqlSession, userPk);
		return list;
	}
}
