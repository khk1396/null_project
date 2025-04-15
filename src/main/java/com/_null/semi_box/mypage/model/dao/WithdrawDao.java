package com._null.semi_box.mypage.model.dao;

import org.apache.ibatis.session.SqlSession;

public class WithdrawDao {

    // 비밀번호 확인
    public boolean checkPassword(SqlSession sqlSession, int userPk, String currentPassword) {
        String storedPassword = sqlSession.selectOne("withdrawMapper.selectPasswordByPk", userPk);
        return storedPassword != null && storedPassword.equals(currentPassword);
    }

    // 회원 탈퇴 처리: 회원 데이터를 DB에서 삭제
    public boolean deleteMember(SqlSession sqlSession, int userPk) {
        int result = sqlSession.delete("withdrawMapper.deleteMember", userPk);
        return result > 0;  // 삭제가 성공하면 true 반환
    }
}
