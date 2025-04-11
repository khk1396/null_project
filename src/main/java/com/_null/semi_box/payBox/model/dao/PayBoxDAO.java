package com._null.semi_box.payBox.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.payBox.model.vo.PayBox;

public class PayBoxDAO {
	/* 현재 로그인 유저가 구매한 박스 전체 목록 조회 */
	public List<PayBox> selectPayBoxAll(SqlSession sqlSession, String userPk) {
		return sqlSession.selectList("payBoxMapper.selectPayBoxAll", userPk);
	}
}
