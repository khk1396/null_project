package com._null.semi_box.payBox.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.boxopen.common.Template;
import com._null.semi_box.payBox.model.dao.PayBoxDAO;
import com._null.semi_box.payBox.model.dto.PayBoxDto;
import com._null.semi_box.payBox.model.vo.PayBox;

public class PayBoxServiceImpl implements PayBoxService {
	private PayBoxDAO payBoxDAO = new PayBoxDAO();
	
	public ArrayList<PayBox> selectPayBoxAllByUserPk(int userPk) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<PayBox> list = (ArrayList<PayBox>)payBoxDAO.selectPayBoxAll(sqlSession, userPk);
		sqlSession.close();
		return list;
	}

	public int insertPayBox(PayBox vo) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = new PayBoxDAO().insertPayBox(sqlSession, vo);
		if (result > 0) sqlSession.commit();
		else sqlSession.rollback();
		sqlSession.close();
		return result;
	}
}
