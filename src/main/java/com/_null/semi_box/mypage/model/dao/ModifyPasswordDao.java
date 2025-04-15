package com._null.semi_box.mypage.model.dao;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.mypage.model.vo.ModifyPassword;

public class ModifyPasswordDao {

    // 현재 비밀번호 조회
    public String selectCurrentPassword(SqlSession sqlSession, int userPk) {
        return sqlSession.selectOne("modifyPasswordMapper.selectCurrentPassword", userPk);
    }

    // 비밀번호 수정
    public int updatePassword(SqlSession sqlSession, ModifyPassword modifyPassword) {
        return sqlSession.update("modifyPasswordMapper.updatePassword", modifyPassword);
    }
}
